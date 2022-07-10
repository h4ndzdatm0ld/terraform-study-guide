#######
#Collection Functions 
#######

#chunklist splits a single list into fixed-size chunks, returning a list of lists
chunklist(list, chunk_size)
chunklist(["a", "b", "c", "d", "e"], 2)
[
  [
    "a",
    "b",
  ],
  [
    "c",
    "d",
  ],
  [
    "e",
  ],
]

chunklist(["a", "b", "c", "d", "e"], 1)
[
  [
    "a",
  ],
  [
    "b",
  ],
  [
    "c",
  ],
  [
    "d",
  ],
  [
    "e",
  ],
]


#coalesce takes any number of arguments and returns the first one that isn't null or an empty string
coalesce("a", "b")
#a
coalesce("", "b")
#b
coalesce(1,2)
#1
coalesce(["", "b"]...)  #using with a list of strings 
#b

#coalescelist takes any number of list arguments and returns the first one that isn't empty.
coalescelist(["a", "b"], ["c", "d"])
[
  "a",
  "b",
]
coalescelist([], ["c", "d"])
[
  "c",
  "d",
]

coalescelist([[], ["c", "d"]]...)
[
  "c",
  "d",
]

#compact takes a list of strings and returns a new list with any empty string elements removed.
compact(["a", "", "b", "c"])
[
  "a",
  "b",
  "c",
]

#concat takes two or more lists and combines them into a single list
concat(["a", ""], ["b", "c"])
[
  "a",
  "",
  "b",
  "c",
]

#contains determines whether a given list or set contains a given single value as one of its elements.
contains(list, value)
contains(["a", "b", "c"], "a")
#true
contains(["a", "b", "c"], "d")
#false

#distinct takes a list and returns a new list with any duplicate elements removed.
distinct(["a", "b", "a", "c", "d", "b"]) #first occurrence of the value is keps and ordering is preserved
[
  "a",
  "b",
  "c",
  "d",
]

#element retrieves a single element from a list by the given index value.
element(["a", "b", "c"], 1)
b

#flatten, combines a list of lists into a single list.
flatten([[["a", "b"], []], ["c"]])
["a", "b", "c"]

#index - Much like `element` but backwards. Instead of getting the value of the element at a given index,
# it returns the index of the element.
index(["a", "b", "c"], "b")
1

# Value / must exist

index(["a", "b", "c"], "C")
╷
│ Error: Error in function call
│
│   on <console-input> line 1:
│   (source code not available)
│
│ Call to function "index" failed: item not found.
╵

#keys, much like .keys() for dictionaries in Python - only the keys are returned from a map (dict).
keys({a=1, c=2, d=3})
[
  "a",
  "c",
  "d",
]


#length of a given list, map or string.
length([])
0
length(["a", "b"])
2
length({"a" = "b"})
1
length("hello")
5

#lookup - Think of this as a safe get() function. If the key is not found, it returns the default value.
lookup({a="ay", b="bee"}, "a", "what?")
ay
lookup({a="ay", b="bee"}, "c", "what?")
what?

#map 

#matchkeys

#merge 

#range

#reverse 

#setintersection 

#setproduct 

#setsubtract

#setunion 

#slice 

#sort 

#transpose 

#values 

#zipmap 

