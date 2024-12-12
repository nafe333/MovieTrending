MovieTrending
MovieTrending is an iOS app that displays the top trending movies using "The Movie Database (TMDb)" free API. The app provides users with details such as movie descriptions, release dates, and ratings, offering a clean and engaging experience.

Features
View a list of top trending movies.
Detailed information for each movie, including a description, release date, and rating.
Clean and responsive UI built with navigation controllers and table views.
Activity indicator for a smooth loading experience.
Technical Details
MovieTrending is built using the following:

MVVM (Model-View-ViewModel) Architectural Pattern: For better separation of concerns and maintainability.
URLSession: To fetch data from TMDb's API.
SDWebImage (CocoaPod): For efficient image caching and loading.
TableView and Custom TableViewCell: For presenting movie details in a structured and visually appealing layout.
Activity Indicator: To indicate loading states during data fetches.
