fun containsDuplicate(nums: IntArray): Boolean {
    val unique = mutableSetOf<Int>()
    for (num in nums) {
        if (unique.contains(num)) return true
        unique.add(num)
    }
    return false
}

fun main() {
    println(containsDuplicate(intArrayOf(1, 2, 3, 4)))      // false
    println(containsDuplicate(intArrayOf(1, 2, 3, 4, 1)))   // true
}
