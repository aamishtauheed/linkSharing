package com.linksharing
import grails.validation.Validateable
import com.linksharing.commandObject.TopicCO
import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap


@Transactional
class TopicService {

    def serviceMethod() {

    }

    def createTopic(long id, TopicCO topicCO) {
        User user = User.findById(id)
        Topic topic = new Topic(tName: topicCO.tName, visibility: topicCO.visibility, createdBy: user)
        topic.save(flush: true, failOnError: true)
        Subscription subscription = new Subscription(user: user, topic: topic, seriousness: Subscription.Seriousness.SERIOUS)
        topic.addToSubscriptions(subscription)
        user.addToSubscriptions(subscription)
        print(topic.properties)
        user.addToTopics(topic)
        user.save(flush: true, failOnError: true)
        print("created")


    }

    def trendingTopics(User user) {

            def criteria = Topic.createCriteria()
            List<Topic> topicList = criteria.listDistinct {
                or{
                    'subscriptions'{
                        eq('user',user)
                    }
                    eq('visibility',Topic.Visibility.Public)
                }
            }
            topicList.sort {
                Topic topic -> -topic.resources.size()
            }
            topicList
        }


    def subscribed() {
        // User user= session.user
        List<Topic> topic = Topic.list(sort: 'id')
        return topic
    }

    def countIt(User user) {
        Integer tp = Topic.countByCreatedBy(user)
//        Integer sub = Subscription.countByUser(user, user)
        return tp
    }

    def countSub(User user) {
        Integer sub = Subscription.countByUser(user)
        return sub
    }
    def subsCrip(User user){
        List<Subscription> subscription=Subscription.findAllByUser(user)
        return subscription
    }

    def generate() {
        def generator = { String alphabet, int n ->
            new Random().with {
                (1..n).collect { alphabet[nextInt(alphabet.length())] }.join()
            }
        }

        def token = generator((('A'..'Z') + ('0'..'9')).join(), 5)
        return token

    }
}