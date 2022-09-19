class ContactOptions

  def initialize

    @contects = [
      {
        name: 'John Doe',
        email: 'john@brdg.app',
        introsOffered: { free: 3, vip: 0 }
      },
      {
        name: 'Billy Ray Jenkins',
        email: 'billy.jenkins@gmail.com',
        introsOffered: { free: 5, vip: 0 }
      },
      {
        name: 'Jenny Baggins',
        email: 'jeni@x.com',
        introsOffered: { free: 5, vip: 1 }
      },
      {
        name: 'Lloyd Banks',
        email: 'lloyd@banks.com',
        introsOffered: { free: 0, vip: 0 }
      },
      {
        name: 'BA Lewis',
        email: 'ba.lewis@outlook.com',
        introsOffered: { free: 8, vip: 0 }
      },
      {
        name: 'John Johnson',
        email: 'jj@z.com',
        introsOffered: { free: 4, vip: 0 }
      },
      {
        name: 'Adam Johnson',
        email: 'aj@z.com',
        introsOffered: { free: 4, vip: 0 }
      },
      {
        name: 'Joey Simpson',
        email: 'joey@hotmail.com',
        introsOffered: { free: 9, vip: 1 }
      },
      {
        name: 'Penny Smith',
        email: 'penny@smith.com',
        introsOffered: { free: 2, vip: 0 }
      }
    ]

  end

  def perform
    max = 0
    max_object_index = 0

    result = @contects.map.with_index do |content, index|

      if content[:introsOffered][:free] > max and content[:introsOffered][:vip] == 0
        max = content[:introsOffered][:free]
        max_object_index = index
      end

      max_object = [max, content[:introsOffered][:free]].max

      ranking_calculate = contact_ranking_calculation(content[:email], content[:introsOffered])

      name_array = content[:name].split(" ")

      {
        name: content[:name],
        first_name: name_array[0],
        last_name: name_array[1],
        email: content[:email],
        intros_offered: content[:introsOffered],
        rank: ranking_calculate,
        offer: 'free'
      }
    end

    result[max_object_index][:offer] = 'vip'

    result.sort_by { |object| [object[:last_name], object[:first_name]] }
  end

  def contact_ranking_calculation(email, offered)
    default_rank = 3

    if offered[:free] > 0 and offered[:vip] > 0
      default_rank = 1
    end

    regex_mail1 = /(gmail.com)/
    regex_mail2 = /(hotmail.com)/

    if email.match(regex_mail1) or email.match(regex_mail2)
      default_rank = 2
    end

    default_rank
  end

end

# content = ContactOptions.new
# result = content.perform()

# puts(result)
