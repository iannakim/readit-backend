Activity.destroy_all
Task.destroy_all
Article.destroy_all
User.destroy_all

Activity.reset_pk_sequence
Task.reset_pk_sequence
Article.reset_pk_sequence
User.reset_pk_sequence

user1 = User.create(firstname:"Anna", lastname:"Kim", email:"master@gmail.com", password:"abc123")

article1 = Article.create(source: "CNN", author: "Sam Smith", title: "Cooper Gets Adopted!", description: "A dog from South Korea comes to US and meets a family", url: "www.cnn.com", image: "http://3.bp.blogspot.com/-5Qar3vGcagA/U054hgJX5pI/AAAAAAAACHo/Y81R7DdMWzU/s1600/golden-retriever-wallpaper.jpg", date: "February 19, 2021", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Et tortor consequat id porta nibh. Sed blandit libero volutpat sed. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum. Eleifend quam adipiscing vitae proin. Sem viverra aliquet eget sit amet. Bibendum arcu vitae elementum curabitur vitae nunc sed velit dignissim. Purus semper eget duis at tellus at urna condimentum. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse.")

article2 = Article.create(source: "NY Times", author: "Wanda Jones", title: "New Apple Phone is dangerous", description: "The new phone is dangerous and can be harmful!", url: "www.cnn.com", image: "https://cdn.vox-cdn.com/thumbor/wg5d8oZECvdvaB43CNP48qi_f90=/0x0:2040x1360/1200x800/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/56505939/jbareham_160909_1215_B_0133.0.0.jpg", date: "February 19, 2021", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Et tortor consequat id porta nibh. Sed blandit libero volutpat sed. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum. Eleifend quam adipiscing vitae proin. Sem viverra aliquet eget sit amet. Bibendum arcu vitae elementum curabitur vitae nunc sed velit dignissim. Purus semper eget duis at tellus at urna condimentum. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse.")

article3 = Article.create(source: "NY Times", author: "Wanda Jones", title: "New hamburger is delicious", description: "The new phone is dangerous and can be harmful!", url: "www.cnn.com", image: "https://cdn.vox-cdn.com/thumbor/wg5d8oZECvdvaB43CNP48qi_f90=/0x0:2040x1360/1200x800/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/56505939/jbareham_160909_1215_B_0133.0.0.jpg", date: "February 19, 2021", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Et tortor consequat id porta nibh. Sed blandit libero volutpat sed. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum. Eleifend quam adipiscing vitae proin. Sem viverra aliquet eget sit amet. Bibendum arcu vitae elementum curabitur vitae nunc sed velit dignissim. Purus semper eget duis at tellus at urna condimentum. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse.")

article4 = Article.create(source: "CNN", author: "Bob Smith", title: "More Covid deaths in US", description: "The new phone is dangerous and can be harmful!", url: "www.cnn.com", image: "https://cdn.vox-cdn.com/thumbor/wg5d8oZECvdvaB43CNP48qi_f90=/0x0:2040x1360/1200x800/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/56505939/jbareham_160909_1215_B_0133.0.0.jpg", date: "February 19, 2021", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Et tortor consequat id porta nibh. Sed blandit libero volutpat sed. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum. Eleifend quam adipiscing vitae proin. Sem viverra aliquet eget sit amet. Bibendum arcu vitae elementum curabitur vitae nunc sed velit dignissim. Purus semper eget duis at tellus at urna condimentum. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse.")

article5 = Article.create(source: "Hacker News", author: "Kevin Kloss", title: "Found an ancient mummy in NYC", description: "The new phone is dangerous and can be harmful!", url: "www.cnn.com", image: "https://cdn.vox-cdn.com/thumbor/wg5d8oZECvdvaB43CNP48qi_f90=/0x0:2040x1360/1200x800/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/56505939/jbareham_160909_1215_B_0133.0.0.jpg", date: "February 19, 2021", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Et tortor consequat id porta nibh. Sed blandit libero volutpat sed. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum. Eleifend quam adipiscing vitae proin. Sem viverra aliquet eget sit amet. Bibendum arcu vitae elementum curabitur vitae nunc sed velit dignissim. Purus semper eget duis at tellus at urna condimentum. Potenti nullam ac tortor vitae purus faucibus ornare suspendisse.")


task1 = Task.create(skill:"Defining New Words" , prompt: "Select five (5) new words from the article. Write each word's definition and use it in a complete sentence.", article_id: 1)
task2 = Task.create(skill:"Asking Questions" , prompt: "Based on the article, generate three (3) questions using Why/How/What", article_id: 2)
task3 = Task.create(skill: "Author's Purpose & Point of View", prompt: "How does your point of view compare to the author's?", article_id: 3)
task4 = Task.create(skill: "Key Ideas & Details", prompt: "What is the Main Idea of this article?", article_id: 4)
task5 = Task.create(skill:"Making Personal Connections to the Text" , prompt: "Explain how this article impacts you or people around you", article_id: 5)


activity1 = Activity.create(user_id:1, article_id:1, content: "This is my summary!")




puts "💖💖💖🤓"