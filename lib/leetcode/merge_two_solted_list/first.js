
/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} list1
 * @param {ListNode} list2
 * @return {ListNode}
 */


// Input: list1 = [1,2,4], list2 = [1,3,4]
// Output: [1,1,2,3,4,4]


let mergeTwoLists = (list0, list1) => {
  let index0 = 0
  let index1 = 0
  let total_length = list0.length + list1.length
  let result = []

  if (total_length < 2) {
    if(list0.length > 0){
      return list0
    } else{
      return list1
    }
  }

  for (let i = 0; i < total_length; i += 1) {
    if(list0[index0] == undefined  && list1[index1] == undefined){
      return result
    }
    if (list0[index0] >= list1[index1]) {
      result.push(list1[index1])
      index1 += 1
    } else {
      result.push(list0[index0])
      index0 += 1
    }
  }
  return result
};


const list1 = [1, 2, 4]
const list2 = [1, 3, 4]

console.log(mergeTwoLists(list1, list2))

// Input: list1 = [], list2 = []
// Output: []
// const list1 = []
// const list2 = []

// console.log(mergeTwoLists(list1, list2))

// Input: list1 = [], list2 = [0]
// Output: [0]
// const list1 = []
// const list2 = [0]

// console.log(mergeTwoLists(list1, list2))