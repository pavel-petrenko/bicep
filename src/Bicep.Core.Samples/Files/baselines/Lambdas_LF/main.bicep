﻿var doggos = [
  'Evie'
  'Casper'
  'Indy'
  'Kira'
]

var numbers = range(0, 4)

var sayHello = map(doggos, i => 'Hello ${i}!')

var isEven = filter(numbers, i => 0 == i % 2)

var evenDoggosNestedLambdas = map(filter(numbers, i => contains(filter(numbers, j => 0 == j % 2), i)), x => doggos[x])

var flattenedArrayOfArrays = flatten([[0, 1], [2, 3], [4, 5]])
var flattenedEmptyArray = flatten([])

var mapSayHi = map(['abc', 'def', 'ghi'], foo => 'Hi ${foo}!')
var mapEmpty = map([], foo => 'Hi ${foo}!')
var mapObject = map(range(0, length(doggos)), i => {
  i: i
  doggo: doggos[i]
  greeting: 'Ahoy, ${doggos[i]}!'
})
var mapArray = flatten(map(range(1, 3), i => [i * 2, (i * 2) + 1]))
var mapMultiLineArray = flatten(map(range(1, 3), i => [
  i * 3
  (i * 3) + 1
  (i * 3) + 2
]))

var filterEqualityCheck = filter(['abc', 'def', 'ghi'], foo => 'def' == foo)
var filterEmpty = filter([], foo => 'def' == foo)

var sortNumeric = sort([8, 3, 10, -13, 5], (x, y) => x < y)
var sortAlpha = sort(['ghi', 'abc', 'def'], (x, y) => x < y)
var sortAlphaReverse = sort(['ghi', 'abc', 'def'], (x, y) => x > y)
var sortByObjectKey = sort([
  { key: 124, name: 'Second' }
  { key: 298, name: 'Third' }
  { key: 24, name: 'First' }
  { key: 1232, name: 'Fourth' }
], (x, y) => int(x.key) < int(y.key))
var sortEmpty = sort([], (x, y) => int(x) < int(y))

var reduceStringConcat = reduce(['abc', 'def', 'ghi'], '', (cur, next) => concat(cur, next))
var reduceFactorial = reduce(range(1, 5), 1, (cur, next) => cur * next)
var reduceObjectUnion = reduce([
  { foo: 123 }
  { bar: 456 }
  { baz: 789 }
], {}, (cur, next) => union(cur, next))
var reduceEmpty = reduce([], 0, (cur, next) => cur)

var itemForLoop = [for item in range(0, 10): item]
var filteredLoop = filter(itemForLoop, i => i > 5)

output doggoGreetings array = [for item in mapObject: item.greeting]

resource storageAcc 'Microsoft.Storage/storageAccounts@2021-09-01' existing = {
  name: 'asdfsadf'
}
var mappedResProps = map(items(storageAcc.properties.secondaryEndpoints), item => item.value)

module myMod './test.bicep' = {
  name: 'asdfsadf'
  params: {
    outputThis: map(mapObject, obj => obj.doggo)
  }
}
var mappedModOutputProps = map(myMod.outputs.outputThis, doggo => '${doggo} says bork')

var parentheses = map([123], (i => '${i}'))

var objectMap = toObject([123, 456, 789], i => '${i / 100}')
var objectMap2 = toObject(range(0, 10), i => '${i}', i => {
  isEven: (i % 2) == 0
  isGreaterThan4: (i > 4)
})
var objectMap3 = toObject(sortByObjectKey, x => x.name)
var objectMap4 = toObject(sortByObjectKey, x =>
  
  x.name)
var objectMap5 = toObject(sortByObjectKey, xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx => xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.name)
var objectMap6 = toObject(range(0, 10), i => '${i}', i => // comment
{
  isEven: (i % 2) == 0
  isGreaterThan4: (i > 4)
})

var multiLine = reduce(['abc', 'def', 'ghi'], '', (
  cur,
  next
) => concat(cur, next))
