虽说使用 RAC 有了一段时间，但是今天发现了一个莫名其妙的问题。当我的 `viewmodel` 中含有 `RACCommand` 的对象时，在 `tests` 文件中进行测试发现会崩溃，而且这个崩溃不能让人理解。后来发现是文件关联的 `target` 不正确导致的。

感兴趣的可以[在这里](https://github.com/jianghui1/TestRACCommandInTests)下载代码。

首先看下我的测试代码如图所示：

![代码](https://github.com/jianghui1/TestRACCommandInTests/blob/master/Pics/%E4%BB%A3%E7%A0%81.png?raw=true)

这里有三个 `ViewModel` ，关联的 `target` 是不一样的。他们的关联关系如下图所示：

![0](https://github.com/jianghui1/TestRACCommandInTests/blob/master/Pics/0.png?raw=true)

![1](https://github.com/jianghui1/TestRACCommandInTests/blob/master/Pics/1.png?raw=true)

![2](https://github.com/jianghui1/TestRACCommandInTests/blob/master/Pics/2.png?raw=true)

因为测试代码是写在 `TestRACCommandInTestsTests.m` 文件中的，所以最终关联了这个 `target` 的 `viewmodel` 才可以正常运行。
