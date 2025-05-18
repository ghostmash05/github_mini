# GitHub Mini

<p align="center">
  <img src="assets/github_logo.png" alt="GitHub Mini Logo" width="200"/>
</p>

A clean, user-friendly Flutter application for browsing GitHub profiles, repositories, and more. GitHub Mini provides a streamlined experience for accessing GitHub data on mobile devices with a focus on performance and usability.

## ✨ Features

- **Profile Viewing** - View detailed GitHub user profiles including bio, stats, and activity
- **Repository Browsing** - Browse through user repositories with advanced filtering options
- **Repository Details** - Explore repository details including code, commits, issues, and PRs
- **Pull-to-Refresh** - Stay up-to-date with the latest information
- **Pagination Support** - Smooth scrolling through large lists of repositories
- **Offline Mode** - Access previously loaded data even without an internet connection
- **Error Handling** - Graceful error management with user-friendly messages
- **Shimmer Loading Effects** - Elegant loading states while data is being fetched
- **Deep Linking** - Open GitHub URLs directly in the app
- **OAuth Security** - Secure authentication with GitHub

## 🏗️ Architecture

GitHub Mini follows the Model-View-Controller (MVC) architecture pattern with GetX for state management:

```
lib/
├── controllers/   # Business logic and state management
├── models/        # Data models
├── services/      # API and data services
├── views/         # UI components
├── utils/         # Helper functions and constants
└── main.dart      # Application entry point
```

## 🛠️ Technologies

- **Flutter** - UI toolkit for building natively compiled applications
- **GetX** - State management, navigation, and dependency injection
- **Dio** - HTTP client for API requests
- **Hive** - Lightweight and fast key-value database for offline caching
- **Shimmer** - Loading animation effects for better user experience

## 📱 Screenshots

<p align="center">
  <img src="screenshots/profile_screen.png" width="200" />
  <img src="screenshots/repositories_list.png" width="200" />
  <img src="screenshots/repository_details.png" width="200" />
</p>

## 🚀 Getting Started

### Prerequisites

- Flutter (latest stable version)
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- GitHub API credentials (for full functionality)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/github_mini.git
   cd github_mini
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Configure GitHub OAuth (optional):
   - Create a GitHub OAuth App at [GitHub Developer Settings](https://github.com/settings/developers)
   - Add your client ID and secret to the appropriate configuration file

4. Run the application:
   ```bash
   flutter run
   ```

## 💻 Usage

1. **Search for Users**: Enter a GitHub username to view their profile
2. **Browse Repositories**: Scroll through the user's repositories with filtering options
3. **View Repository Details**: Tap on a repository to see more information
4. **Pull to Refresh**: Pull down on any list to refresh the data
5. **Offline Access**: Previously loaded data will be available even without internet connection

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👏 Acknowledgments

- GitHub for their excellent API
- The Flutter community for inspiration and packages
- All contributors who help improve the app
