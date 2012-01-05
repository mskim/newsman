
LAST_NAMES=["Kim", "Kim", "Kim", "Kim","Kim","Kim","Kim","Kim","Lee", "Lee", "Lee", "Lee","Lee","Lee","Park","Park","Park", "Park","Park","Choi", "Choi", "Choi","Chung", "Chung","Chung", "Yoon","Yoon","Oh", "Shin","Son", "Ko","Chun","Hong", "Kang","Na", "Yang", "Pack", "Roh", "Suh", "Nam", "Ha"]
KOREAN_CHARS=["Ga", "Go", "Goo", "Gu", "Na", "No", "Nae", "Nan", "Nag", "Nong", "Da", "Dan", "Dong","Doo","Dok","Rah", "Roh", "Man", "Mo", "Mok", "Mong","Moo", "Min","Ban", "Bong", "Bok", "Bak","Sa", "San","Sang", "So","Song","Soo", "Soon", "Sook", "Young", "Yong","Ja","Joo", "Jong", "Jung","Cha", "Chang","Choong","Ha", "Han","Hoon"]
COMPANY_KIND=["Bank", "University", "Agency", "Restaurant", "Rent Car", "Medical", "Furniture", "RealEstate", "Trading", "Food", "Logistics", "Security", "Insurance", "Paint", "Print", "Copy", "Coffee", "Wedding"]
COMPANY_TITLE=["CEO", "President", "Vise President", "General Manager", "Manager", "Doctor", "PhD", "Assistant", "Security Guard", "COO", "SCO", "CFO", "Clerk"]
AREA_CODE=["02", "031", "032", "064"]
CITY=['Seoul', 'Boosan', 'Taegu', 'Inchon', 'Kyunggi-do Youngin']
KOO_DONG=['Jounggu Dongjak-dong', 'Kangnam-gu Dokok-dong', 'Sucho-go il-dong', 'Songpa-gu youngil-dong', 'Kyunggi-do Youngin']
HAND_PHONE=["011", "010", "016"]
MAIL_SERVER=["gmail.com", "naver.com", "hanmail.com", "paran.com"]

  # Your code goes here...
  
    def generate_name
      last_name= LAST_NAMES[rand(LAST_NAMES.length)] +" "
      name1= KOREAN_CHARS[rand(KOREAN_CHARS.length)] +" "
      name2= KOREAN_CHARS[rand(KOREAN_CHARS.length)]
      last_name + name1 + name2
    end

    def generate_title
      COMPANY_TITLE[rand(COMPANY_TITLE.length)]
    end

    def generate_company_name
      name1= KOREAN_CHARS[rand(KOREAN_CHARS.length)] 
      name2= KOREAN_CHARS[rand(KOREAN_CHARS.length)] +" "
      kind= COMPANY_KIND[rand(COMPANY_KIND.length)]
      name=name1 + name2 +kind
    end


    def generate_hand_phone_number
      area= HAND_PHONE[rand(HAND_PHONE.length)] + "-"
      three= rand(9).to_s + rand(9).to_s + rand(9).to_s + "-"
      four= rand(9).to_s + rand(9).to_s + rand(9).to_s + rand(9).to_s
      area + three +four
    end

    def generate_phone_number
      area= AREA_CODE[rand(AREA_CODE.length)] + "-"
      three= rand(9).to_s + rand(9).to_s + rand(9).to_s + "-"
      four= rand(9).to_s + rand(9).to_s + rand(9).to_s + rand(9).to_s
      area + three +four
    end

    def generate_email(name)
      n=name.downcase.gsub(" ","")
      m=MAIL_SERVER[rand(MAIL_SERVER.length)]
      name.downcase.gsub(" ","") + "@" + m
    end

    def generate_address_1
      two= rand(9).to_s + rand(9).to_s
      three= rand(9).to_s + rand(9).to_s + rand(9).to_s
      koo_dong= KOO_DONG[rand(KOO_DONG.length)]
      two+" "+three+" "+koo_dong+ " "
    end

    def generate_address_2
      city= CITY[rand(CITY.length)] + ", "+'Korea'
    end

  WORDS = %w(alias consequatur aut perferendis sit voluptatem accusantium doloremque aperiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt neque dolorem ipsum quia dolor sit amet consectetur adipisci velit sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem ut enim ad minima veniam quis nostrum exercitationem ullam corporis nemo enim ipsam voluptatem quia voluptas sit suscipit laboriosam nisi ut aliquid ex ea commodi consequatur quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae et iusto odio dignissimos ducimus qui blanditiis praesentium laudantium totam rem voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident sed ut perspiciatis unde omnis iste natus error similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo porro quisquam est qui minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut consequatur vel illum qui dolorem eum fugiat quo voluptas nulla pariatur at vero eos et accusamus officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores doloribus asperiores repellat)


    def generate_sentense_of(sentenses,words)
      length=WORDS.length
      story=''
      sentenses.times do
        paragraph=''
        words.times do
          paragraph<< WORDS[rand(length)]
          paragraph<< " "
        end
        paragraph<< WORDS[rand(length)]
        paragraph<< "\n"
        story<< paragraph
      end
     story
    end

    def generate_news_article
      news_article=[]
      news_article<<["Title",generate_sentense_of(1,3).capitalize]
      news_article<<["Subtitle",generate_sentense_of(1,7).capitalize]
      news_article<<["Author",generate_sentense_of(1,1).capitalize]
      news_article<<["Body",generate_sentense_of(20,60)]
    end

    def generate_news_body(sentenses,words)
      generate_sentense_of(sentenses, words)
    end

    def generate_body_text (number_of_heading)
      @body_text=[]
      number_of_heading.times do
        @body_text<<["head",generate_sentense_of(1,7).capitalize]
        @body_text<<["body",generate_sentense_of(20,20)]
        @body_text<<["body",generate_sentense_of(20,20)]
        @body_text<<["head",generate_sentense_of(1,7).capitalize]
        @body_text<<["body",generate_sentense_of(20,20)]
        @body_text<<["body",generate_sentense_of(20,20)]
      end
      @body_text
    end

    def generate_body_text_with_image (number_of_heading)
      @body_text=[]
      count=1
      number_of_heading.times do
        @body_text<<["head",generate_sentense_of(1,7).capitalize]
        @body_text<<["image_a", {:filename=>"image-#{count}", :corner=>"top_left"}]
        count+=1
        @body_text<<["body",generate_sentense_of(20,20)]
        @body_text<<["body",generate_sentense_of(20,20)]
        @body_text<<["head",generate_sentense_of(1,7).capitalize]
        @body_text<<["body",generate_sentense_of(20,20)]
        @body_text<<["body",generate_sentense_of(20,20)]
      end
      @body_text
    end


    def generate_megazine_article

    end

    def book_chapter
      chapter={}
      title=generate_sentense_of(1,5).capitalize
      chapter['title']=title
      subtitle=generate_sentense_of(1,5).capitalize
      chapter['subtitle']=subtitle
      quote=generate_sentense_of(1,15).capitalize
      chapter['quote']=quote
      chapter['body']=generate_body_text(10)
      chapter
    end

