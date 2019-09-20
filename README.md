## drugstore_solidity ##
Simple drugstore solidity based contract

*The intention of this contract is to create a basic understanding of the basic structure.*

**Line 6** creates a mechanism to count drugs. It is implemented in line 37.

**Line 8** is a key/value based structure allowing to access struct Drugstore (structure of elements. e.g. manufacturer, drug name etc.).

**Line 12** implements opening time (Epoch time is used).

**Lines  14, 19** adds modifiers (adding condition prior to function execution).

**Line 29** is executed only once, as soon as contract has been lauched.

**Line 33** allows adding drugs, increments count and refers every newly added item to the counter.(e.g. once new item is added, the counter will increment by 1).





