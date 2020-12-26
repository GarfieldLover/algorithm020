学习笔记

Solution_maximalSquare
用 dp(i, j)dp(i,j) 表示以 (i, j)(i,j) 为右下角，且只包含 11 的正方形的边长最大值。如果我们能计算出所有 dp(i, j)dp(i,j) 的值，那么其中的最大值即为矩阵中只包含 11 的正方形的边长最大值，其平方即为最大正方形的面积。



Solution_countSubString

dp解法：dp[i][j]表示 i 到 j 的字符串能不能构成回文串,那么dp[i][j] = dp[i +1][j - 1] && (s[i] == s[j])


