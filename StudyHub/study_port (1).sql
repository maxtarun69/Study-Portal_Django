-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2024 at 06:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `study_port`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `uname` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`uname`, `password`, `email`) VALUES
('tarun', '1234', 'tarun@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add course', 7, 'add_course'),
(26, 'Can change course', 7, 'change_course'),
(27, 'Can delete course', 7, 'delete_course'),
(28, 'Can view course', 7, 'view_course'),
(29, 'Can add adminlog', 8, 'add_adminlog'),
(30, 'Can change adminlog', 8, 'change_adminlog'),
(31, 'Can delete adminlog', 8, 'delete_adminlog'),
(32, 'Can view adminlog', 8, 'view_adminlog'),
(33, 'Can add contact message', 9, 'add_contactmessage'),
(34, 'Can change contact message', 9, 'change_contactmessage'),
(35, 'Can delete contact message', 9, 'delete_contactmessage'),
(36, 'Can view contact message', 9, 'view_contactmessage'),
(37, 'Can add studentregister', 10, 'add_studentregister'),
(38, 'Can change studentregister', 10, 'change_studentregister'),
(39, 'Can delete studentregister', 10, 'delete_studentregister'),
(40, 'Can view studentregister', 10, 'view_studentregister');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'Studyportalapp', 'adminlog'),
(9, 'Studyportalapp', 'contactmessage'),
(7, 'Studyportalapp', 'course'),
(10, 'Studyportalapp', 'studentregister');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-06 19:29:23.130940'),
(2, 'auth', '0001_initial', '2024-06-06 19:29:23.649282'),
(3, 'admin', '0001_initial', '2024-06-06 19:29:23.791899'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-06-06 19:29:23.805862'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-06 19:29:23.818830'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-06-06 19:29:23.922552'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-06-06 19:29:23.988374'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-06-06 19:29:24.032256'),
(9, 'auth', '0004_alter_user_username_opts', '2024-06-06 19:29:24.046219'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-06-06 19:29:24.134982'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-06-06 19:29:24.136976'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-06 19:29:24.147948'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-06-06 19:29:24.168891'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-06 19:29:24.186844'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-06-06 19:29:24.215766'),
(16, 'auth', '0011_update_proxy_permissions', '2024-06-06 19:29:24.224751'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-06 19:29:24.243692'),
(18, 'sessions', '0001_initial', '2024-06-06 19:29:24.305526'),
(19, 'Studyportalapp', '0001_initial', '2024-06-06 20:29:25.425231'),
(20, 'Studyportalapp', '0002_adminlog_contactmessage_studentregister', '2024-06-07 20:29:45.385555');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('nvvd4pw0nnupaz83slht2ie5y424hrx7', '.eJyrVkrNNVSyUipJLCrNc0jPTczM0UvOz1XSUSooBokbGpkYGwJ5pXlwVUq1ALWZD8g:1sIowS:5OjyXu_xTpNb1gpG6KHhrk49HAHLG3-gAWPgUa-aWj8', '2024-06-30 12:25:04.072169');

-- --------------------------------------------------------

--
-- Table structure for table `studyportalapp_course`
--

CREATE TABLE `studyportalapp_course` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `video_link` varchar(200) DEFAULT NULL,
  `pdf` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studyportalapp_course`
--

INSERT INTO `studyportalapp_course` (`id`, `title`, `content`, `image`, `video_link`, `pdf`) VALUES
(6, 'Python', 'Python was created by Guido van Rossum and first released in 1991. It was designed with the philosophy of code readability and simplicity in mind, drawing inspiration from languages like ABC, which was intended for teaching programming, and other languages like C, Modula-3, and Lisp.\r\n\r\n### Key Milestones in Python\'s Development:\r\n\r\n1. **Python 1.0 (1991)**:\r\n   - The first version of Python, introduced basic features like exception handling, functions, and the core data types (lists, strings, etc.).\r\n   - Included modules, classes, and functions, making it a versatile language from the beginning.\r\n\r\n2. **Python 2.0 (2000)**:\r\n   - Introduced significant new features, including list comprehensions, garbage collection, and the introduction of Unicode support.\r\n   - Marked a period of rapid growth and adoption of Python, especially in web development and scientific computing.\r\n\r\n3. **Python 3.0 (2008)**:\r\n   - A major overhaul of the language, not fully backward-compatible with Python 2.x.\r\n   - Introduced many improvements to the language\'s design to rectify fundamental design flaws, such as a more consistent behavior of strings and integers.\r\n   - Emphasized reducing redundancy and eliminating old ways of doing things in favor of more streamlined, clear constructs.\r\n\r\n### Design Philosophy:\r\n\r\nPython\'s design philosophy emphasizes code readability and simplicity. This philosophy is summarized in \"The Zen of Python\" by Tim Peters, which includes aphorisms like:\r\n- \"Beautiful is better than ugly.\"\r\n- \"Explicit is better than implicit.\"\r\n- \"Simple is better than complex.\"\r\n- \"Readability counts.\"\r\n\r\n### Features and Benefits:\r\n\r\n1. **Readability**: Python\'s clean and straightforward syntax allows developers to write more understandable code, reducing the time needed to understand and maintain it.\r\n\r\n2. **Extensive Standard Library**: Python\'s standard library is vast, offering modules and functions for many tasks, which helps developers avoid writing code from scratch for common tasks.\r\n\r\n3. **Cross-Platform**: Python is platform-independent, meaning it can run on various operating systems like Windows, MacOS, Linux, and more.\r\n\r\n4. **Community Support**: Python has a large, active community that contributes to a wealth of third-party modules, frameworks, and tools, as well as extensive documentation and tutorials.\r\n\r\n5. **Integration Capabilities**: Python can easily integrate with other languages and technologies, such as C, C++, Java, and .NET, making it a versatile tool for various programming needs.\r\n\r\n### Popular Uses:\r\n\r\n1. **Web Development**: Frameworks like Django and Flask make Python a popular choice for building web applications.\r\n2. **Data Science and Machine Learning**: Libraries like NumPy, Pandas, Matplotlib, Scikit-learn, TensorFlow, and PyTorch are widely used in data analysis, scientific computing, and AI development.\r\n3. **Automation and Scripting**: Python is frequently used for writing scripts to automate repetitive tasks.\r\n4. **Software Development**: Python is used in developing desktop applications and games.\r\n5. **Education**: Python is a preferred language for teaching programming due to its simplicity and readability.\r\n\r\nPython continues to evolve, with active development and community support ensuring it remains a relevant and powerful tool for programmers around the world.', 'course_images/icons8-python-48_zoK75Ic.png', 'https://www.youtube.com/watch?v=6OQaQtXAgrE', 'course_pdfs/What_We_Do_YxrOSja.docx'),
(7, 'Introduction ', 'Python was created by Guido van Rossum and first released in 1991. It was designed with the philosophy of code readability and simplicity in mind, drawing inspiration from languages like ABC, which was intended for teaching programming, and other languages like C, Modula-3, and Lisp.\r\n\r\n### Key Milestones in Python\'s Development:\r\n\r\n1. **Python 1.0 (1991)**:\r\n   - The first version of Python, introduced basic features like exception handling, functions, and the core data types (lists, strings, etc.).\r\n   - Included modules, classes, and functions, making it a versatile language from the beginning.\r\n\r\n2. **Python 2.0 (2000)**:\r\n   - Introduced significant new features, including list comprehensions, garbage collection, and the introduction of Unicode support.\r\n   - Marked a period of rapid growth and adoption of Python, especially in web development and scientific computing.\r\n\r\n3. **Python 3.0 (2008)**:\r\n   - A major overhaul of the language, not fully backward-compatible with Python 2.x.\r\n   - Introduced many improvements to the language\'s design to rectify fundamental design flaws, such as a more consistent behavior of strings and integers.\r\n   - Emphasized reducing redundancy and eliminating old ways of doing things in favor of more streamlined, clear constructs.\r\n\r\n### Design Philosophy:\r\n\r\nPython\'s design philosophy emphasizes code readability and simplicity. This philosophy is summarized in \"The Zen of Python\" by Tim Peters, which includes aphorisms like:\r\n- \"Beautiful is better than ugly.\"\r\n- \"Explicit is better than implicit.\"\r\n- \"Simple is better than complex.\"\r\n- \"Readability counts.\"\r\n\r\n### Features and Benefits:\r\n\r\n1. **Readability**: Python\'s clean and straightforward syntax allows developers to write more understandable code, reducing the time needed to understand and maintain it.\r\n\r\n2. **Extensive Standard Library**: Python\'s standard library is vast, offering modules and functions for many tasks, which helps developers avoid writing code from scratch for common tasks.\r\n\r\n3. **Cross-Platform**: Python is platform-independent, meaning it can run on various operating systems like Windows, MacOS, Linux, and more.\r\n\r\n4. **Community Support**: Python has a large, active community that contributes to a wealth of third-party modules, frameworks, and tools, as well as extensive documentation and tutorials.\r\n\r\n5. **Integration Capabilities**: Python can easily integrate with other languages and technologies, such as C, C++, Java, and .NET, making it a versatile tool for various programming needs.\r\n\r\n### Popular Uses:\r\n\r\n1. **Web Development**: Frameworks like Django and Flask make Python a popular choice for building web applications.\r\n2. **Data Science and Machine Learning**: Libraries like NumPy, Pandas, Matplotlib, Scikit-learn, TensorFlow, and PyTorch are widely used in data analysis, scientific computing, and AI development.\r\n3. **Automation and Scripting**: Python is frequently used for writing scripts to automate repetitive tasks.\r\n4. **Software Development**: Python is used in developing desktop applications and games.\r\n5. **Education**: Python is a preferred language for teaching programming due to its simplicity and readability.\r\n\r\nPython continues to evolve, with active development and community support ensuring it remains a relevant and powerful tool for programmers around the world.', 'course_images/icons8-python-48_GiyYLy8.png', 'https://www.youtube.com/watch?v=6OQaQtXAgrE', 'course_pdfs/What_We_Do_faR91vz.docx'),
(8, 'Data types ', 'Python has several built-in data types that are used to store different kinds of data. Understanding these data types is fundamental to programming in Python. Here’s an overview of the primary data types in Python:\r\n\r\n### Numeric Types\r\n\r\n1. **Integers (`int`)**:\r\n   - Whole numbers, positive or negative, without a decimal point.\r\n   - Example: `x = 10`\r\n\r\n2. **Floating Point Numbers (`float`)**:\r\n   - Numbers that contain a decimal point or use exponential (scientific) notation.\r\n   - Example: `y = 3.14` or `z = 1.5e2` (which is 150.0)\r\n\r\n3. **Complex Numbers (`complex`)**:\r\n   - Numbers with a real and an imaginary part, denoted by `a + bj`.\r\n   - Example: `c = 3 + 5j`\r\n\r\n### Sequence Types\r\n\r\n1. **Strings (`str`)**:\r\n   - Immutable sequences of characters, enclosed in single, double, or triple quotes.\r\n   - Example: `s = \"Hello, World!\"`\r\n\r\n2. **Lists (`list`)**:\r\n   - Ordered, mutable sequences of items. Items can be of different types.\r\n   - Example: `lst = [1, 2, 3, \'four\', 5.0]`\r\n\r\n3. **Tuples (`tuple`)**:\r\n   - Ordered, immutable sequences of items. Items can be of different types.\r\n   - Example: `tpl = (1, 2, 3, \'four\', 5.0)`\r\n\r\n4. **Ranges (`range`)**:\r\n   - Represents an immutable sequence of numbers, typically used in for-loops.\r\n   - Example: `r = range(10)` (which generates numbers from 0 to 9)\r\n\r\n### Mapping Types\r\n\r\n1. **Dictionaries (`dict`)**:\r\n   - Unordered collections of key-value pairs. Keys must be unique and immutable.\r\n   - Example: `d = {\'name\': \'Alice\', \'age\': 30, \'city\': \'New York\'}`\r\n\r\n### Set Types\r\n\r\n1. **Sets (`set`)**:\r\n   - Unordered collections of unique items.\r\n   - Example: `s = {1, 2, 3, 4, 5}`\r\n\r\n2. **Frozen Sets (`frozenset`)**:\r\n   - Immutable version of a set.\r\n   - Example: `fs = frozenset([1, 2, 3, 4, 5])`\r\n\r\n### Boolean Type\r\n\r\n1. **Booleans (`bool`)**:\r\n   - Represents one of two values: `True` or `False`.\r\n   - Example: `is_valid = True`\r\n\r\n### Binary Types\r\n\r\n1. **Bytes (`bytes`)**:\r\n   - Immutable sequences of bytes, used for binary data.\r\n   - Example: `b = b\'Hello\'`\r\n\r\n2. **Byte Arrays (`bytearray`)**:\r\n   - Mutable sequences of bytes.\r\n   - Example: `ba = bytearray([65, 66, 67])`\r\n\r\n3. **Memory Views (`memoryview`)**:\r\n   - Allows access to the internal data of an object that supports the buffer protocol without copying.\r\n   - Example: `mv = memoryview(b\'Hello\')`\r\n\r\n### None Type\r\n\r\n1. **NoneType (`None`)**:\r\n   - Represents the absence of a value or a null value.\r\n   - Example: `n = None`\r\n\r\n### Examples of Using Different Data Types\r\n\r\n```python\r\n# Numeric types\r\nx = 10           # int\r\ny = 3.14         # float\r\nz = 1.5e2        # float (150.0)\r\nc = 3 + 5j       # complex\r\n\r\n# Sequence types\r\ns = \"Hello, World!\"     # str\r\nlst = [1, 2, 3, \'four\'] # list\r\ntpl = (1, 2, 3, \'four\') # tuple\r\nr = range(5)            # range (0, 1, 2, 3, 4)\r\n\r\n# Mapping type\r\nd = {\'name\': \'Alice\', \'age\': 30}\r\n\r\n# Set types\r\nset1 = {1, 2, 3, 4, 5}             # set\r\nfrozen_set = frozenset([1, 2, 3])  # frozenset\r\n\r\n# Boolean type\r\nis_valid = True\r\n\r\n# Binary types\r\nb = b\'Hello\'                   # bytes\r\nba = bytearray([65, 66, 67])   # bytearray\r\nmv = memoryview(b\'Hello\')      # memoryview\r\n\r\n# None type\r\nn = None\r\n```\r\n\r\nEach of these data types has its own methods and behaviors, which makes Python a versatile language for handling various kinds of data.', 'course_images/icons8-python-48_emZYTrk.png', 'https://www.youtube.com/watch?v=6OQaQtXAgrE', 'course_pdfs/What_We_Do_oDf2RST.docx'),
(9, 'java', 'Java is a high-level, object-oriented programming language that was designed to have as few implementation dependencies as possible. It is intended to let application developers write once, run anywhere (WORA), meaning that compiled Java code can run on all platforms that support Java without the need for recompilation. Here are some key features and aspects of Java:\r\n\r\n1. **Object-Oriented**: Java is built around the concept of objects and classes. This allows for modular, reusable code.\r\n\r\n2. **Platform-Independent**: Java code is compiled into an intermediate form called bytecode, which can be executed on any system that has a Java Virtual Machine (JVM). This makes Java applications highly portable.\r\n\r\n3. **Simple and Familiar**: Java\'s syntax is similar to C++, making it easier for programmers to learn. It also removes many of the complex features of C++, such as multiple inheritance and pointers, making it simpler and safer to use.\r\n\r\n4. **Robust and Secure**: Java emphasizes early checking for possible errors, runtime checking, and a garbage-collection mechanism to manage memory. It also includes security features that enable the development of virus-free, tamper-free systems.\r\n\r\n5. **Multithreaded**: Java supports multithreading, which allows multiple threads to run concurrently, making it possible to write highly interactive and responsive applications.\r\n\r\n6. **High Performance**: While Java is interpreted, modern JVMs use Just-In-Time (JIT) compilation to convert bytecode into native machine code, which boosts performance.\r\n\r\n7. **Distributed**: Java is designed to support distributed computing, and it includes a large set of APIs to handle network communication.\r\n\r\n8. **Dynamic**: Java is designed to adapt to an evolving environment. New code can be dynamically loaded and executed, making it possible to extend applications and provide new functionality without interrupting the application.\r\n\r\n### Common Uses of Java\r\n- **Web Applications**: Java is widely used for building robust, scalable web applications using frameworks like Spring and JavaServer Faces (JSF).\r\n- **Mobile Applications**: Android development primarily uses Java.\r\n- **Enterprise Applications**: Java is a popular choice for enterprise-level applications and backend systems due to its stability and scalability.\r\n- **Scientific Applications**: Java is used in the scientific community for its portability and performance.\r\n- **Embedded Systems**: Java is also used in various embedded systems and IoT devices.\r\n\r\n### Example of a Simple Java Program\r\nHere\'s a basic example of a Java program that prints \"Hello, World!\" to the console:\r\n\r\n```java\r\npublic class HelloWorld {\r\n    public static void main(String[] args) {\r\n        System.out.println(\"Hello, World!\");\r\n    }\r\n}\r\n```\r\n\r\nTo run this program:\r\n1. Save it in a file named `HelloWorld.java`.\r\n2. Compile it using the Java compiler with the command: `javac HelloWorld.java`.\r\n3. Run the compiled bytecode with the command: `java HelloWorld`.\r\n\r\nThis will output:\r\n```\r\nHello, World!\r\n```\r\n\r\nFeel free to ask more questions or request specific information related to Java!', 'course_images/java-logo-1.png', 'https://www.youtube.com/watch?v=6OQaQtXAgrE', 'course_pdfs/What_We_Do_uhrSwfb.docx'),
(10, 'Introduction', 'Java is a versatile, platform-independent, high-level programming language developed by Sun Microsystems (now owned by Oracle Corporation). It was initially released in 1995 and has since become one of the most popular programming languages in the world. The language was designed to be easy to use and accessible for developers, with a focus on simplicity, reliability, and portability. Below is an introduction to Java, covering its history, features, and basic concepts.\r\n\r\n### History of Java\r\n- **1991**: Java was conceived by James Gosling, Mike Sheridan, and Patrick Naughton as part of the Green Project at Sun Microsystems. Initially, it was intended for interactive television, but the technology was too advanced for the digital cable television industry at the time.\r\n- **1995**: Java 1.0 was officially released, and it gained popularity rapidly due to its portability and the promise of \"write once, run anywhere\" (WORA).\r\n- **1997**: Java Development Kit (JDK) 1.1 was released, bringing significant improvements to the language and runtime.\r\n- **2006**: Sun Microsystems made Java available under the GNU General Public License (GPL).\r\n- **2010**: Oracle Corporation acquired Sun Microsystems and took over the development of Java.\r\n\r\n### Key Features of Java\r\n1. **Object-Oriented**: Java is fundamentally object-oriented, which means it uses objects and classes to structure the code. This allows for modular, reusable, and maintainable code.\r\n2. **Platform-Independent**: Java code is compiled into bytecode, which can be run on any device with a Java Virtual Machine (JVM). This makes Java highly portable.\r\n3. **Simple**: Java\'s syntax is clear and easy to understand, making it a good choice for beginners. It eliminates complex features of other languages, such as multiple inheritance and explicit pointers.\r\n4. **Secure**: Java provides a secure runtime environment by including features such as bytecode verification, sandboxing, and the security manager, which protect against malicious code.\r\n5. **Robust**: Java emphasizes early error checking, runtime checking, and has a garbage collection mechanism to manage memory automatically.\r\n6. **Multithreaded**: Java has built-in support for multithreading, allowing concurrent execution of two or more threads.\r\n7. **High Performance**: Java achieves high performance through the use of Just-In-Time (JIT) compilers that convert bytecode into native machine code at runtime.\r\n8. **Distributed**: Java\'s extensive standard library includes APIs for networking, making it well-suited for building distributed applications.\r\n9. **Dynamic**: Java programs can dynamically load classes, extend their functionalities, and interact with native methods written in other languages.\r\n\r\n### Java Programming Basics\r\n\r\n#### Structure of a Java Program\r\nA basic Java program consists of the following components:\r\n- **Classes and Objects**: Java programs are built using classes, which define the properties and behaviors of objects.\r\n- **Methods**: Methods are functions defined within a class that perform specific tasks.\r\n- **Main Method**: The entry point of any Java application is the `main` method.\r\n\r\n#### Example of a Simple Java Program\r\n\r\n```java\r\npublic class HelloWorld {\r\n    public static void main(String[] args) {\r\n        System.out.println(\"Hello, World!\");\r\n    }\r\n}\r\n```\r\n\r\n- **Class Definition**: The program defines a class named `HelloWorld`.\r\n- **Main Method**: The `main` method is the entry point of the program. It is defined with the signature `public static void main(String[] args)`.\r\n- **Print Statement**: The `System.out.println` statement prints \"Hello, World!\" to the console.\r\n\r\n#### Compilation and Execution\r\n1. **Save the code** in a file named `HelloWorld.java`.\r\n2. **Compile the code** using the Java compiler (`javac`): `javac HelloWorld.java`.\r\n3. **Run the compiled bytecode** using the JVM: `java HelloWorld`.\r\n\r\n### Java Development Tools\r\n- **JDK (Java Development Kit)**: Includes the tools necessary to write, compile, and run Java programs.\r\n- **IDE (Integrated Development Environment)**: Tools like IntelliJ IDEA, Eclipse, and NetBeans provide comprehensive facilities for software development, including code editors, debuggers, and build automation tools.\r\n- **Build Tools**: Tools like Maven and Gradle are used for managing project dependencies and build processes.\r\n\r\n### Java Ecosystem\r\n- **Java SE (Standard Edition)**: Provides the core functionality for developing desktop applications.\r\n- **Java EE (Enterprise Edition)**: Extends Java SE with additional libraries for building large-scale, distributed, and multi-tiered enterprise applications.\r\n- **Java ME (Micro Edition)**: A subset of Java SE for developing applications on mobile and embedded devices.\r\n\r\n### Conclusion\r\nJava\'s design philosophy of simplicity, robustness, and portability has made it a popular choice for developers across a wide range of applications. Its extensive libraries, strong community support, and continuous evolution ensure that Java remains relevant and widely used in the software development industry.\r\n\r\nFeel free to ask if you have more specific questions or need further details on any aspect of Java!', 'course_images/java-logo-1_z9ceNYy.png', 'https://www.youtube.com/watch?v=6OQaQtXAgrE', 'course_pdfs/What_We_Do_1K6wOHZ.docx'),
(11, 'Java  Jdk & Jvm', '### Java Development Kit (JDK)\r\n\r\nThe **Java Development Kit (JDK)** is a software development environment used for developing Java applications and applets. It includes:\r\n\r\n1. **Compiler (javac)**: Converts Java source code into bytecode.\r\n2. **Java Runtime Environment (JRE)**: Provides libraries, Java Virtual Machine (JVM), and other components to run applications written in Java.\r\n3. **Java Debugger (jdb)**: A tool for debugging Java programs.\r\n4. **JavaDoc**: A documentation generator that creates API documentation from Java source code.\r\n5. **Additional tools**: Various utilities for monitoring and managing Java applications.\r\n\r\n### Java Virtual Machine (JVM)\r\n\r\nThe **Java Virtual Machine (JVM)** is a part of the JRE that runs Java bytecode. It provides a platform-independent way of executing Java programs. The JVM has the following main components:\r\n\r\n1. **Class Loader**: Loads class files into the JVM.\r\n2. **Bytecode Verifier**: Ensures the bytecode adheres to the JVM specification and does not violate security constraints.\r\n3. **Interpreter/Just-In-Time (JIT) Compiler**: Executes the bytecode. The interpreter executes it line by line, while the JIT compiler converts it into native machine code for better performance.\r\n4. **Garbage Collector**: Manages memory by reclaiming memory used by objects that are no longer needed.\r\n\r\n### Key Differences\r\n\r\n- **JDK**: It\'s a complete development kit with tools for developing, debugging, and monitoring Java applications.\r\n- **JVM**: It\'s an execution environment that runs Java applications.\r\n\r\n### How They Work Together\r\n\r\n- When you write Java code, you use the JDK to compile the source code into bytecode.\r\n- The JVM then takes this bytecode and executes it, either through interpretation or by compiling it to native machine code.\r\n\r\n### Versions and Distributions\r\n\r\nJava has different versions (e.g., Java 8, Java 11, Java 17) and distributions (e.g., Oracle JDK, OpenJDK). The main difference between versions includes new features, performance improvements, and bug fixes. Various distributions may have different licensing models and additional tools or optimizations.\r\n\r\n### Example Workflow\r\n\r\n1. **Write Code**: Write Java source code (`.java` file).\r\n2. **Compile Code**: Use the JDK\'s compiler (`javac`) to compile the source code into bytecode (`.class` file).\r\n3. **Run Code**: Use the JVM (part of the JRE) to execute the compiled bytecode.\r\n\r\n```java\r\n// Example Java program\r\npublic class HelloWorld {\r\n    public static void main(String[] args) {\r\n        System.out.println(\"Hello, World!\");\r\n    }\r\n}\r\n```\r\n\r\nTo compile and run this program:\r\n\r\n```bash\r\n# Compile the Java program\r\njavac HelloWorld.java\r\n\r\n# Run the compiled bytecode\r\njava HelloWorld\r\n```\r\n\r\n### Summary\r\n\r\n- **JDK**: For developing Java applications (includes JRE and development tools).\r\n- **JVM**: For running Java applications (executes bytecode).', 'course_images/java-logo-1_ayHGjYO.png', 'https://www.youtube.com/watch?v=6OQaQtXAgrE', 'course_pdfs/What_We_Do_8c3a5wI.docx'),
(12, 'Dart', 'This page provides a brief introduction to the Dart language through samples of its main features.\r\n\r\nTo learn more about the Dart language, visit the in-depth, individual topic pages listed under Language in the left side menu.\r\n\r\nFor coverage of Dart\'s core libraries, check out the core library documentation. You can also try the Dart cheatsheet codelab, for a more hands-on introduction.\r\n\r\nHello World\r\n#\r\nEvery app requires the top-level main() function, where execution starts. Functions that don\'t explicitly return a value have the void return type. To display text on the console, you can use the top-level print() function:\r\n\r\nvoid main() {\r\n  print(\'Hello, World!\');\r\n}\r\ncontent_copy\r\nRead more about the main() function in Dart, including optional parameters for command-line arguments.\r\n\r\nVariables\r\n#\r\nEven in type-safe Dart code, you can declare most variables without explicitly specifying their type using var. Thanks to type inference, these variables\' types are determined by their initial values:\r\n\r\nvar name = \'Voyager I\';\r\nvar year = 1977;\r\nvar antennaDiameter = 3.7;\r\nvar flybyObjects = [\'Jupiter\', \'Saturn\', \'Uranus\', \'Neptune\'];\r\nvar image = {\r\n  \'tags\': [\'saturn\'],\r\n  \'url\': \'//path/to/saturn.jpg\'\r\n};\r\ncontent_copy\r\nRead more about variables in Dart, including default values, the final and const keywords, and static types.', 'course_images/icons8-dart-48_ZyL6joY.png', 'https://www.youtube.com/watch?v=NrO0CJCbYLA', 'course_pdfs/data_werehousese.docx'),
(13, 'Dart Variables', 'Null safety\r\n#\r\nThe Dart language enforces sound null safety.\r\n\r\nNull safety prevents an error that results from unintentional access of variables set to null. The error is called a null dereference error. A null dereference error occurs when you access a property or call a method on an expression that evaluates to null. An exception to this rule is when null supports the property or method, like toString() or hashCode. With null safety, the Dart compiler detects these potential errors at compile time.\r\n\r\nFor example, say you want to find the absolute value of an int variable i. If i is null, calling i.abs() causes a null dereference error. In other languages, trying this could lead to a runtime error, but Dart\'s compiler prohibits these actions. Therefore, Dart apps can\'t cause runtime errors.\r\n\r\nNull safety introduces three key changes:\r\n\r\nWhen you specify a type for a variable, parameter, or another relevant component, you can control whether the type allows null. To enable nullability, you add a ? to the end of the type declaration.\r\n\r\nString? name  // Nullable type. Can be `null` or string.\r\n\r\nString name   // Non-nullable type. Cannot be `null` but can be string.\r\ncontent_copy\r\nYou must initialize variables before using them. Nullable variables default to null, so they are initialized by default. Dart doesn\'t set initial values to non-nullable types. It forces you to set an initial value. Dart doesn\'t allow you to observe an uninitialized variable. This prevents you from accessing properties or calling methods where the receiver\'s type can be null but null doesn\'t support the method or property used.\r\n\r\nYou can\'t access properties or call methods on an expression with a nullable type. The same exception applies where it\'s a property or method that null supports like hashCode or toString().\r\n\r\nSound null safety changes potential runtime errors into edit-time analysis errors. Null safety flags a non-null variable when it has been either:\r\n\r\nNot initialized with a non-null value.\r\nAssigned a null value.\r\nThis check allows you to fix these errors before deploying your app.\r\n\r\nDefault value\r\n#\r\nUninitialized variables that have a nullable type have an initial value of null. Even variables with numeric types are initially null, because numbers—like everything else in Dart—are objects.\r\n\r\nint? lineCount;\r\nassert(lineCount == null);\r\ncontent_copy\r\nNote\r\nProduction code ignores the assert() call. During development, on the other hand, assert(condition) throws an exception if condition is false. For details, check out Assert.\r\n\r\nWith null safety, you must initialize the values of non-nullable variables before you use them:\r\n\r\nint lineCount = 0;\r\ncontent_copy\r\nYou don\'t have to initialize a local variable where it\'s declared, but you do need to assign it a value before it\'s used. For example, the following code is valid because Dart can detect that lineCount is non-null by the time it\'s passed to print():\r\n\r\nint lineCount;\r\n\r\nif (weLikeToCount) {\r\n  lineCount = countLines();\r\n} else {\r\n  lineCount = 0;\r\n}\r\n\r\nprint(lineCount);\r\ncontent_copy\r\nTop-level and class variables are lazily initialized; the initialization code runs the first time the variable is used.\r\n\r\nLate variables\r\n#\r\nThe late modifier has two use cases:\r\n\r\nDeclaring a non-nullable variable that\'s initialized after its declaration.\r\nLazily initializing a variable.\r\nOften Dart\'s control flow analysis can detect when a non-nullable variable is set to a non-null value before it\'s used, but sometimes analysis fails. Two common cases are top-level variables and instance variables: Dart often can\'t determine whether they\'re set, so it doesn\'t try.\r\n\r\nIf you\'re sure that a variable is set before it\'s used, but Dart disagrees, you can fix the error by marking the variable as late:\r\n\r\nlate String description;\r\n\r\nvoid main() {\r\n  description = \'Feijoada!\';\r\n  print(description);\r\n}', 'course_images/icons8-dart-48_d9CkCib.png', 'https://www.youtube.com/watch?v=NrO0CJCbYLA', 'course_pdfs/code.docx'),
(14, 'Dart Operators', 'Dart supports the operators shown in the following table. The table shows Dart\'s operator associativity and operator precedence from highest to lowest, which are an approximation of Dart\'s operator relationships. You can implement many of these operators as class members.\r\n\r\nDescription	Operator	Associativity\r\nunary postfix	expr++    expr--    ()    []    ?[]    .    ?.    !	None\r\nunary prefix	-expr    !expr    ~expr    ++expr    --expr      await expr	None\r\nmultiplicative	*    /    %  ~/	Left\r\nadditive	+    -	Left\r\nshift	<<    >>    >>>	Left\r\nbitwise AND	&	Left\r\nbitwise XOR	^	Left\r\nbitwise OR	|	Left\r\nrelational and type test	>=    >    <=    <    as    is    is!	None\r\nequality	==    !=	None\r\nlogical AND	&&	Left\r\nlogical OR	||	Left\r\nif-null	??	Left\r\nconditional	expr1    ?    expr2    :    expr3	Right\r\ncascade	..    ?..	Left\r\nassignment	=    *=    /=   +=   -=   &=   ^=   etc.	Right\r\nspread (See note)	...    ...?	None\r\nWarning\r\nThe previous table should only be used as a helpful guide. The notion of operator precedence and associativity is an approximation of the truth found in the language grammar. You can find the authoritative behavior of Dart\'s operator relationships in the grammar defined in the Dart language specification.\r\n\r\nWhen you use operators, you create expressions. Here are some examples of operator expressions:\r\n\r\na++\r\na + b\r\na = b\r\na == b\r\nc ? a : b\r\na is T\r\ncontent_copy\r\nOperator precedence example\r\n#\r\nIn the operator table, each operator has higher precedence than the operators in the rows that follow it. For example, the multiplicative operator % has higher precedence than (and thus executes before) the equality operator ==, which has higher precedence than the logical AND operator &&. That precedence means that the following two lines of code execute the same way:\r\n\r\n// Parentheses improve readability.\r\nif ((n % i == 0) && (d % i == 0)) ...\r\n\r\n// Harder to read, but equivalent.\r\nif (n % i == 0 && d % i == 0) ...\r\ncontent_copy\r\nWarning\r\nFor operators that take two operands, the leftmost operand determines which method is used. For example, if you have a Vector object and a Point object, then aVector + aPoint uses Vector addition (+).\r\n\r\nArithmetic operators\r\n#\r\nDart supports the usual arithmetic operators, as shown in the following table.\r\n\r\nOperator	Meaning\r\n+	Add\r\n-	Subtract\r\n-expr	Unary minus, also known as negation (reverse the sign of the expression)\r\n*	Multiply\r\n/	Divide\r\n~/	Divide, returning an integer result\r\n%	Get the remainder of an integer division (modulo)\r\nExample:\r\n\r\nassert(2 + 3 == 5);\r\nassert(2 - 3 == -1);\r\nassert(2 * 3 == 6);\r\nassert(5 / 2 == 2.5); // Result is a double\r\nassert(5 ~/ 2 == 2); // Result is an int\r\nassert(5 % 2 == 1); // Remainder\r\n\r\nassert(\'5/2 = ${5 ~/ 2} r ${5 % 2}\' == \'5/2 = 2 r 1\');\r\ncontent_copy\r\nDart also supports both prefix and postfix increment and decrement operators.\r\n\r\nOperator	Meaning\r\n++var	var  =  var + 1 (expression value is var + 1)\r\nvar++	var  =  var + 1 (expression value is var)\r\n--var	var  =  var - 1 (expression value is var - 1)\r\nvar--	var  =  var - 1 (expression value is var)\r\nExample:\r\n\r\nint a;\r\nint b;\r\n\r\na = 0;\r\nb = ++a; // Increment a before b gets its value.\r\nassert(a == b); // 1 == 1\r\n\r\na = 0;\r\nb = a++; // Increment a after b gets its value.\r\nassert(a != b); // 1 != 0\r\n\r\na = 0;\r\nb = --a; // Decrement a before b gets its value.\r\nassert(a == b); // -1 == -1\r\n\r\na = 0;\r\nb = a--; // Decrement a after b gets its value.\r\nassert(a != b); // -1 != 0\r\ncontent_copy\r\nEquality and relational operators\r\n#\r\nThe following table lists the meanings of equality and relational operators.\r\n\r\nOperator	Meaning\r\n==	Equal; see discussion below\r\n!=	Not equal\r\n>	Greater than\r\n<	Less than\r\n>=	Greater than or equal to\r\n<=	Less than or equal to\r\nTo test whether two objects x and y represent the same thing, use the == operator. (In the rare case where you need to know whether two objects are the exact same object, use the identical() function instead.) Here\'s how the == operator works:\r\n\r\nIf x or y is null, return true if both are null, and false if only one is null.\r\n\r\nReturn the result of invoking the == method on x with the argument y. (That\'s right, operators such as == are methods that are invoked on their first operand. For details, see Operators.)\r\n\r\nHere\'s an example of using each of the equality and relational operators:\r\n\r\nassert(2 == 2);\r\nassert(2 != 3);\r\nassert(3 > 2);\r\nassert(2 < 3);\r\nassert(3 >= 3);\r\nassert(2 <= 3);\r\ncontent_copy\r\nType test operators\r\n#\r\nThe as, is, and is! operators are handy for checking types at runtime.\r\n\r\nOperator	Meaning\r\nas	Typecast (also used to specify library prefixes)\r\nis	True if the object has the specified type\r\nis!	True if the object doesn\'t have the specified type\r\nThe result of obj is T is true if obj implements the interface specified by T. For example, obj is Object? is always true.\r\n\r\nUse the as operator to cast an object to a particular type if and only if you are sure that the object is of that type. Example:\r\n\r\n(employee as Person).firstName = \'Bob\';\r\ncontent_copy\r\nIf you aren\'t sure that the object is of type T, then use is T to check the type before using the object.\r\n\r\nif (employee is Person) {\r\n  // Type check\r\n  employee.firstName = \'Bob\';\r\n}\r\ncontent_copy\r\nNote\r\nThe code isn\'t equivalent. If employee is null or not a Person, the first example throws an exception; the second does nothing.\r\n\r\nAssignment operators\r\n#\r\nAs you\'ve already seen, you can assign values using the = operator. To assign only if the assigned-to variable is null, use the ??= operator.\r\n\r\n// Assign value to a\r\na = value;\r\n// Assign value to b if b is null; otherwise, b stays the same\r\nb ??= value;\r\ncontent_copy\r\nCompound assignment operators such as += combine an operation with an assignment.\r\n\r\n=	*=	%=	>>>=	^=\r\n+=	/=	<<=	&=	|=\r\n-=	~/=	>>=		\r\nHere\'s how compound assignment operators work:\r\n\r\nFor an operator op:	a op= b	a = a op b\r\nExample:	a += b	a = a + b\r\nThe following example uses assignment and compound assignment operators:\r\n\r\nvar a = 2; // Assign using =\r\na *= 3; // Assign and multiply: a = a * 3\r\nassert(a == 6);\r\ncontent_copy\r\nLogical operators\r\n#\r\nYou can invert or combine boolean expressions using the logical operators.\r\n\r\nOperator	Meaning\r\n!expr	inverts the following expression (changes false to true, and vice versa)\r\n||	logical OR\r\n&&	logical AND\r\nHere\'s an example of using the logical operators:\r\n\r\nif (!done && (col == 0 || col == 3)) {\r\n  // ...Do something...\r\n}\r\ncontent_copy\r\nBitwise and shift operators\r\n#\r\nYou can manipulate the individual bits of numbers in Dart. Usually, you\'d use these bitwise and shift operators with integers.\r\n\r\nOperator	Meaning\r\n&	AND\r\n|	OR\r\n^	XOR\r\n~expr	Unary bitwise complement (0s become 1s; 1s become 0s)\r\n<<	Shift left\r\n>>	Shift right\r\n>>>	Unsigned shift right\r\nNote\r\nThe behavior of bitwise operations with large or negative operands might differ between platforms. To learn more, check out Bitwise operations platform differences.\r\n\r\nHere\'s an example of using bitwise and shift operators:\r\n\r\nfinal value = 0x22;\r\nfinal bitmask = 0x0f;\r\n\r\nassert((value & bitmask) == 0x02); // AND\r\nassert((value & ~bitmask) == 0x20); // AND NOT\r\nassert((value | bitmask) == 0x2f); // OR\r\nassert((value ^ bitmask) == 0x2d); // XOR\r\n\r\nassert((value << 4) == 0x220); // Shift left\r\nassert((value >> 4) == 0x02); // Shift right\r\n\r\n// Shift right example that results in different behavior on web\r\n// because the operand value changes when masked to 32 bits:\r\nassert((-value >> 4) == -0x03);\r\n\r\nassert((value >>> 4) == 0x02); // Unsigned shift right\r\nassert((-value >>> 4) > 0); // Unsigned shift right\r\ncontent_copy\r\nVersion note\r\nThe >>> operator (known as triple-shift or unsigned shift) requires a language version of at least 2.14.\r\n\r\nConditional expressions\r\n#\r\nDart has two operators that let you concisely evaluate expressions that might otherwise require if-else statements:\r\n\r\ncondition ? expr1 : expr2\r\nIf condition is true, evaluates expr1 (and returns its value); otherwise, evaluates and returns the value of expr2.\r\nexpr1 ?? expr2\r\nIf expr1 is non-null, returns its value; otherwise, evaluates and returns the value of expr2.\r\nWhen you need to assign a value based on a boolean expression, consider using the conditional operator ? and :.\r\n\r\nvar visibility = isPublic ? \'public\' : \'private\';\r\ncontent_copy\r\nIf the boolean expression tests for null, consider using the if-null operator ?? (also known as the null-coalescing operator).\r\n\r\nString playerName(String? name) => name ?? \'Guest\';\r\ncontent_copy\r\nThe previous example could have been written at least two other ways, but not as succinctly:\r\n\r\n// Slightly longer version uses ?: operator.\r\nString playerName(String? name) => name != null ? name : \'Guest\';\r\n\r\n// Very long version uses if-else statement.\r\nString playerName(String? name) {\r\n  if (name != null) {\r\n    return name;\r\n  } else {\r\n    return \'Guest\';\r\n  }\r\n}\r\ncontent_copy\r\nCascade notation\r\n#\r\nCascades (.., ?..) allow you to make a sequence of operations on the same object. In addition to accessing instance members, you can also call instance methods on that same object. This often saves you the step of creating a temporary variable and allows you to write more fluid code.\r\n\r\nConsider the following code:\r\n\r\nvar paint = Paint()\r\n  ..color = Colors.black\r\n  ..strokeCap = StrokeCap.round\r\n  ..strokeWidth = 5.0;\r\ncontent_copy\r\nThe constructor, Paint(), returns a Paint object. The code that follows the cascade notation operates on this object, ignoring any values that might be returned.\r\n\r\nThe previous example is equivalent to this code:\r\n\r\nvar paint = Paint();\r\npaint.color = Colors.black;\r\npaint.strokeCap = StrokeCap.round;\r\npaint.strokeWidth = 5.0;\r\ncontent_copy\r\nIf the object that the cascade operates on can be null, then use a null-shorting cascade (?..) for the first operation. Starting with ?.. guarantees that none of the cascade operations are attempted on that null object.\r\n\r\nquerySelector(\'#confirm\') // Get an object.\r\n  ?..text = \'Confirm\' // Use its members.\r\n  ..classes.add(\'important\')\r\n  ..onClick.listen((e) => window.alert(\'Confirmed!\'))\r\n  ..scrollIntoView();\r\ncontent_copy\r\nVersion note\r\nThe ?.. syntax requires a language version of at least 2.12.\r\n\r\nThe previous code is equivalent to the following:\r\n\r\nvar button = querySelector(\'#confirm\');\r\nbutton?.text = \'Confirm\';\r\nbutton?.classes.add(\'important\');\r\nbutton?.onClick.listen((e) => window.alert(\'Confirmed!\'));\r\nbutton?.scrollIntoView();\r\ncontent_copy\r\nYou can also nest cascades. For example:\r\n\r\nfinal addressBook = (AddressBookBuilder()\r\n      ..name = \'jenny\'\r\n      ..email = \'jenny@example.com\'\r\n      ..phone = (PhoneNumberBuilder()\r\n            ..number = \'415-555-0100\'\r\n            ..label = \'home\')\r\n          .build())\r\n    .build();\r\ncontent_copy\r\nBe careful to construct your cascade on a function that returns an actual object. For example, the following code fails:\r\n\r\nvar sb = StringBuffer();\r\nsb.write(\'foo\')\r\n  ..write(\'bar\'); // Error: method \'write\' isn\'t defined for \'void\'.\r\ncontent_copy\r\nThe sb.write() call returns void, and you can\'t construct a cascade on void.\r\n\r\nNote\r\nStrictly speaking, the \"double dot\" notation for cascades isn\'t an operator. It\'s just part of the Dart syntax.\r\n\r\nSpread operators\r\n#\r\nSpread operators evaluate an expression that yields a collection, unpacks the resulting values, and inserts them into another collection.\r\n\r\nThe spread operator isn\'t actually an operator expression. The .../...? syntax is part of the collection literal itself. So, you can learn more about spread operators on the Collections page.\r\n\r\nBecause it isn\'t an operator, the syntax doesn\'t have any \"operator precedence\". Effectively, it has the lowest \"precedence\" — any kind of expression is valid as the spread target, such as:\r\n\r\n[...a + b]\r\ncontent_copy\r\nOther operators\r\n#\r\nYou\'ve seen most of the remaining operators in other examples:\r\n\r\nOperator	Name	Meaning\r\n()	Function application	Represents a function call\r\n[]	Subscript access	Represents a call to the overridable [] operator; example: fooList[1] passes the int 1 to fooList to access the element at index 1\r\n?[]	Conditional subscript access	Like [], but the leftmost operand can be null; example: fooList?[1] passes the int 1 to fooList to access the element at index 1 unless fooList is null (in which case the expression evaluates to null)\r\n.	Member access	Refers to a property of an expression; example: foo.bar selects property bar from expression foo\r\n?.	Conditional member access	Like ., but the leftmost operand can be null; example: foo?.bar selects property bar from expression foo unless foo is null (in which case the value of foo?.bar is null)\r\n!	Non-null assertion operator	Casts an expression to its underlying non-nullable type, throwing a runtime exception if the cast fails; example: foo!.bar asserts foo is non-null and selects the property bar, unless foo is null in which case a runtime exception is thrown', 'course_images/icons8-dart-48_d9CkCib.png', 'https://www.youtube.com/watch?v=NrO0CJCbYLA', 'course_pdfs/C.docx'),
(15, 'Iot', 'Fundamentals.\r\nPin description.\r\nusdxiuudc', 'course_images/paint-palette.png', 'https://www.youtube.com/watch?v=6OQaQtXAgrE', 'course_pdfs/ModuleDescription.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `s_contact`
--

CREATE TABLE `s_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_contact`
--

INSERT INTO `s_contact` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(7, 'Hemant', 'hemant@gmail.com', 'Thank you .....study hub ', '2024-06-09 00:39:47.516734'),
(8, 'suyash', 'sukla', 'hi bro big fan', '2024-06-09 02:10:12.098324'),
(9, 'binod', 'chomskyl', 'sdfghjdfghjjgfdefhj', '2024-06-09 18:41:50.895958'),
(10, 'Neha', 'nehaha@gmail.com', 'This is amazing webpage for study....', '2024-06-11 10:04:39.863705'),
(11, 'hello', 'hello@gmail.com', '5432', '2024-06-12 16:22:18.889485'),
(12, 'Dhaneshvari', 'Dhaneshvari @gmail.com', 'Amazing website for study ', '2024-06-16 17:50:07.731288');

-- --------------------------------------------------------

--
-- Table structure for table `s_registration`
--

CREATE TABLE `s_registration` (
  `id` int(11) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passw` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `term` varchar(10) NOT NULL,
  `dt` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_registration`
--

INSERT INTO `s_registration` (`id`, `gender`, `sname`, `contact`, `email`, `passw`, `address`, `image`, `term`, `dt`) VALUES
(1, 'male', 'Tarun Kurrey', '1929774367', 'tarun@gmail.com', '12431', 'Village Gangpur Dist Bemetara,Chattisgarh', 'upload/IMG_20221231_003306.jpg', 'on', '2024-06-08 02:19:3'),
(2, 'male', 'Suyash Sukla', '0934081425', 'sukla@gmail.com', '38397', 'Bhavani patna odisha', 'upload/WhatsApp_Image_2024-03-17_at_4.29.37_PM_2.jpeg', 'on', '2024-06-10 04:25:3'),
(5, 'male', 'Sandip Srivastava', '0123657576', 'sandip@gmail.com', '22168', 'Nawagarh ,Bemetara (Chhattisgarh)', 'upload/person.jpg', 'on', '2024-06-10 04:40:2'),
(6, 'Female', 'Sanskriti', '88696575', 'Sanskriti@gmail.com', '53059', 'Raipur ', 'upload/favorite_10125129.png', 'on', '2024-06-11 10:13:2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `studyportalapp_course`
--
ALTER TABLE `studyportalapp_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_contact`
--
ALTER TABLE `s_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_registration`
--
ALTER TABLE `s_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `studyportalapp_course`
--
ALTER TABLE `studyportalapp_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `s_contact`
--
ALTER TABLE `s_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `s_registration`
--
ALTER TABLE `s_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
