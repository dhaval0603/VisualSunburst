-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2015 at 05:56 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HD15_sunburst`
--

-- --------------------------------------------------------

--
-- Table structure for table `charts`
--

CREATE TABLE `charts` (
  `user` varchar(20) NOT NULL,
  `chart_id` int(11) NOT NULL,
  `chart_name` varchar(40) NOT NULL,
  `chart_json` mediumtext NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charts`
--

INSERT INTO `charts` (`user`, `chart_id`, `chart_name`, `chart_json`, `created_dt`) VALUES
('dhaval', 1, 'OS Chart', '{\r\n    "name": "OS",\r\n      "description":["Operating System Concepts - Dr Mueler"],\r\n    "children": [{\r\n        "name": "analytics",\r\n      "description":["Analytics in OS"],\r\n        "children": [{\r\n            "name": "cluster",\r\n            "children": [{\r\n                "name": "AgglomerativeCluster",\r\n                "size": 3938,\r\n                "description": ["AgglomerativeCluster is heavy"]\r\n            }, {\r\n                "name": "CommunityStructure",\r\n                "size": 3812,\r\n                "description": ["Community Service","Distributed Architecture"]\r\n            }, {\r\n                "name": "MergeEdge",\r\n                "size": 743,\r\n                "description": ["Merging Edges","Various merging techniques used"]\r\n            }]\r\n        }, {\r\n            "name": "graph",\r\n            "children": [{\r\n                "name": "BetweennessCentrality",\r\n                "size": 3534,\r\n                "description": ["Various Graph techniques used","Central Everywhere"]\r\n            }, {\r\n                "name": "LinkDistance",\r\n                "size": 5731,\r\n                "description": ["Long Distance","Depends on Link strength"]\r\n            }]\r\n        }]\r\n    }]\r\n}', '2015-11-07 22:37:15'),
('jignesh', 6, 'Internet Protocol', '{\r\n    "name": "InternetProtocols",\r\n    "children": [{\r\n        "name": "Transport Layer",\r\n      "description":["Transport Layer Protocols"],\r\n        "children": [{\r\n            "name": "TCP",\r\n          "description":["TCP Protocol"],\r\n            "children": [{\r\n                "name": "TCP Reno",\r\n                "size": 3938,\r\n                "description": ["TCP Reno implementation is performed","Slow Start"]\r\n            }, {\r\n                "name": "TCP Tahoe",\r\n                "size": 3812,\r\n                "description": ["TCP Tahoe implementation is performed","Slow recovery"]\r\n            }, {\r\n                "name": "Fast Recovery",\r\n                "size": 743,\r\n                "description": ["Fast Recovery is performed","Efficient"]\r\n            }]\r\n        }, {\r\n            "name": "UDP",\r\n          "description":["UDP Protocol"],\r\n            "children": [{\r\n                "name": "Connectionless UDP",\r\n                "size": 3534,\r\n                "description": ["Connectionless UDP is performed","No Reliability"]\r\n            }, {\r\n                "name": "Fake UDP",\r\n                "size": 5731,\r\n                "description": ["TCP using UDP","Disguised TCP"]\r\n            }]\r\n        }]\r\n    }]\r\n}', '2015-11-08 15:57:01'),
('dhaval', 7, 'Algorithms', '{\r\n    "name": "Algorithms",\r\n      "description":["Fall 2015 - Dr Heber"],\r\n    "children": [{\r\n        "name": "Dynamic Programming",\r\n      "description":["Dynamic Programming"],\r\n        "children": [{\r\n            "name": "Memoization",\r\n          "description":["Memoization Techniques"],\r\n            "children": [{\r\n                "name": "Fibonacci",\r\n                "size": 3938,\r\n                "description": ["Fibonacci using Dynamic","Optimized"]\r\n            }, {\r\n                "name": "Matrix Multiplication",\r\n                "size": 3812,\r\n                "description": ["Matrix using Dynamic","Optimized"]\r\n            }]\r\n        }, {\r\n            "name": "Top Down",\r\n          "description":["Top Down Techniques"],\r\n            "children": [{\r\n                "name": "Coin Change ALgorithm",\r\n                "size": 3534,\r\n                "description": ["Coin Change using Top Down","O(n) complexity"]\r\n            }, {\r\n                "name": "Old Algorithm",\r\n                "size": 5731,\r\n                "description": ["Very Old Algorithm","Invented in 1980"]\r\n            }]\r\n        }]\r\n    }]\r\n}', '2015-11-07 22:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `password`) VALUES
('dhaval', 'password'),
('jignesh', 'jignesh'),
('rohit', 'rohit'),
('rahul', 'rahul');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `charts`
--
ALTER TABLE `charts`
  ADD PRIMARY KEY (`chart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `charts`
--
ALTER TABLE `charts`
  MODIFY `chart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
