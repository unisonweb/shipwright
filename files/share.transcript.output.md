```ucm
.> pull https://github.com/unisonweb/base_v2:.trunk .base

  Here's what's changed in .base after the merge:
  
  Added definitions:
  
    1.    ability Abort (+2 metadata)
    2.    ability Ask a (+2 metadata)
    3.    unique type Author
    4.    type Bag a (+4 metadata)
    5.    builtin type Boolean
    6.    builtin type Bytes
    7.    builtin type Char
    8.    unique type CopyrightHolder
    9.    unique type Doc
    10.   type Either a b
    11.   ability Exception e (+2 metadata)
    12.   builtin type Float
    13.   unique type GUID
    14.   type Heap k v
    15.   builtin type Int
    16.   unique type IsPropagated
    17.   unique type IsTest
    18.   unique type License
    19.   unique type LicenseType
    20.   unique type Link
    21.   builtin type Link.Term
    22.   builtin type Link.Type
    23.   builtin type List
    24.   type List.Nonempty a (+5 metadata)
    25.   unique type Map k v (+3 metadata)
    26.   unique type Map.internal.MaxView k v (+4 metadata)
    27.   unique type Map.internal.MinView k v (+4 metadata)
    28.   builtin type Nat
    29.   type Optional a
    30.   unique type Ordering (+3 metadata)
    31.   builtin type Request
    32.   type Set a
    33.   ability Store a (+3 metadata)
    34.   ability Stream e (+2 metadata)
    35.   unique type Test.Result
    36.   builtin type Text
    37.   type Trie k v
    38.   type Tuple a b (+1 metadata)
    39.   type Unit
    40.   type Void (+3 metadata)
    41.   type Weighted a
    42.   unique type Year
    43.   unique type io.BufferMode
    44.   unique type io.EpochTime
    45.   type io.Error
    46.   unique type io.ErrorDescription
    47.   unique type io.ErrorLocation
    48.   unique type io.ErrorType
    49.   unique type io.FilePath
    50.   unique type io.Handle
    51.   unique type io.HostName
    52.   ability io.IO
    53.   type io.Mode
    54.   unique type io.SeekMode
    55.   unique type io.ServiceName
    56.   unique type io.Socket
    57.   unique type io.ThreadId
    58.   ability test.Gen
    59.   ┌ type test.Test
    60.   └ type test.internals.v1.Test.Test
    61.   type test.internals.v1.Domain a
    62.   type test.internals.v1.Test.Report (+1 metadata)
    63.   unique type test.internals.v1.Test.Scope
    64.   type test.internals.v1.Test.Status
    65.   type test.internals.v1.Test.Success
    66.   Abort.abort                                       : {Abort} a (+2 metadata)
    67.   Ask.ask                                           : {Ask
                                                              a} a (+2 metadata)
    68.   Author.Author                                     : GUID
                                                            -> Text
                                                            -> Author
    69.   Bag.internal.MkBag                                : Map
                                                              a
                                                              Nat
                                                            -> Bag
                                                              a (+3 metadata)
    70.   CopyrightHolder.CopyrightHolder                   : GUID
                                                            -> Text
                                                            -> CopyrightHolder
    71.   Doc.Blob                                          : Text
                                                            -> Doc
    72.   Doc.Evaluate                                      : Term
                                                            -> Doc
    73.   Doc.Join                                          : [Doc]
                                                            -> Doc
    74.   Doc.Link                                          : Link
                                                            -> Doc
    75.   Doc.Signature                                     : Term
                                                            -> Doc
    76.   Doc.Source                                        : Link
                                                            -> Doc
    77.   Either.Left                                       : a
                                                            -> Either
                                                              a
                                                              b
    78.   Either.Right                                      : b
                                                            -> Either
                                                              a
                                                              b
    79.   Exception.raise                                   : e
                                                            ->{Exception
                                                              e} a (+2 metadata)
    80.   GUID.GUID                                         : Bytes
                                                            -> GUID
    81.   Heap.Heap                                         : Nat
                                                            -> k
                                                            -> v
                                                            -> [Heap
                                                              k
                                                              v]
                                                            -> Heap
                                                              k
                                                              v
    82.   IsPropagated.IsPropagated                         : IsPropagated
    83.   IsTest.IsTest                                     : IsTest
    84.   License.License                                   : [CopyrightHolder]
                                                            -> [Year]
                                                            -> LicenseType
                                                            -> License
    85.   LicenseType.LicenseType                           : Doc
                                                            -> LicenseType
    86.   Link.Term                                         : Term
                                                            -> Link
    87.   Link.Type                                         : Type
                                                            -> Link
    88.   List.Nonempty.Nonempty                            : a
                                                            -> [a]
                                                            -> Nonempty
                                                              a
    89.   Map.internal.Bin                                  : Nat
                                                            -> k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v (+3 metadata)
    90.   Map.internal.MaxView.MaxView                      : k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            -> MaxView
                                                              k
                                                              v (+3 metadata)
    91.   Map.internal.MinView.MinView                      : k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            -> MinView
                                                              k
                                                              v (+3 metadata)
    92.   Map.internal.Tip                                  : Map
                                                              k
                                                              v (+3 metadata)
    93.   Optional.None                                     : Optional
                                                              a
    94.   Optional.Some                                     : a
                                                            -> Optional
                                                              a
    95.   Ordering.Equal                                    : Ordering
    96.   Ordering.Greater                                  : Ordering
    97.   Ordering.Less                                     : Ordering
    98.   Set.Set                                           : Map
                                                              a
                                                              ()
                                                            -> Set
                                                              a (+1 metadata)
    99.   Store.get                                         : {Store
                                                              a} a (+3 metadata)
    100.  Store.put                                         : a
                                                            ->{Store
                                                              a} () (+3 metadata)
    101.  Stream.emit                                       : e
                                                            ->{Stream
                                                              e} () (+2 metadata)
    102.  Test.Result.Fail                                  : Text
                                                            -> Result
    103.  Test.Result.Ok                                    : Text
                                                            -> Result
    104.  Trie.Trie                                         : Optional
                                                              v
                                                            -> Map
                                                              k
                                                              (Trie
                                                                k
                                                                v)
                                                            -> Trie
                                                              k
                                                              v (+1 metadata)
    105.  Tuple.Cons                                        : a
                                                            -> b
                                                            -> Tuple
                                                              a
                                                              b
    106.  Unit.Unit                                         : ()
    107.  Weighted.Fail                                     : Weighted
                                                              a
    108.  Weighted.Weight                                   : Nat
                                                            -> 'Weighted
                                                              a
                                                            -> Weighted
                                                              a
    109.  Weighted.Yield                                    : a
                                                            -> Weighted
                                                              a
                                                            -> Weighted
                                                              a
    110.  Year.Year                                         : Nat
                                                            -> Year
    111.  io.BufferMode.Block                               : Optional
                                                              Nat
                                                            -> BufferMode
    112.  io.BufferMode.Line                                : BufferMode
    113.  io.EpochTime.EpochTime                            : Nat
                                                            -> EpochTime
    114.  io.Error.Error                                    : ErrorType
                                                            -> Text
                                                            -> Error
    115.  io.ErrorDescription.ErrorDescription              : Text
                                                            -> ErrorDescription
    116.  io.ErrorLocation.ErrorLocation                    : Text
                                                            -> ErrorLocation
    117.  io.ErrorType.AlreadyExists                        : ErrorType
    118.  io.ErrorType.EOF                                  : ErrorType
    119.  io.ErrorType.IllegalOperation                     : ErrorType
    120.  io.ErrorType.NoSuchThing                          : ErrorType
    121.  io.ErrorType.PermissionDenied                     : ErrorType
    122.  io.ErrorType.ResourceBusy                         : ErrorType
    123.  io.ErrorType.ResourceExhausted                    : ErrorType
    124.  io.ErrorType.UserError                            : ErrorType
    125.  io.FilePath.FilePath                              : Text
                                                            -> FilePath
    126.  io.Handle.Handle                                  : Text
                                                            -> Handle
    127.  io.HostName.HostName                              : Text
                                                            -> HostName
    128.  io.IO.accept_                                     : Socket
                                                            ->{IO} Either
                                                              Error
                                                              Socket
    129.  io.IO.bracket_                                    : '{IO} a
                                                            -> (a
                                                            ->{IO} b)
                                                            -> (a
                                                            ->{IO} c)
                                                            ->{IO} Either
                                                              Error
                                                              c
    130.  io.IO.clientSocket_                               : HostName
                                                            -> ServiceName
                                                            ->{IO} Either
                                                              Error
                                                              Socket
    131.  io.IO.closeFile_                                  : Handle
                                                            ->{IO} Either
                                                              Error
                                                              ()
    132.  io.IO.closeSocket_                                : Socket
                                                            ->{IO} Either
                                                              Error
                                                              ()
    133.  io.IO.createDirectory_                            : FilePath
                                                            ->{IO} Either
                                                              Error
                                                              ()
    134.  io.IO.delay_                                      : Nat
                                                            ->{IO} Either
                                                              Error
                                                              ()
    135.  io.IO.directoryContents_                          : FilePath
                                                            ->{IO} Either
                                                              Error
                                                              [FilePath]
    136.  io.IO.fileExists_                                 : FilePath
                                                            ->{IO} Either
                                                              Error
                                                              Boolean
    137.  io.IO.fork_                                       : '{IO} a
                                                            ->{IO} Either
                                                              Error
                                                              ThreadId
    138.  io.IO.getBuffering_                               : Handle
                                                            ->{IO} Either
                                                              Error
                                                              (Optional
                                                                BufferMode)
    139.  io.IO.getCurrentDirectory_                        : {IO} (Either
                                                              Error
                                                              FilePath)
    140.  io.IO.getFileSize_                                : FilePath
                                                            ->{IO} Either
                                                              Error
                                                              Nat
    141.  io.IO.getFileTimestamp_                           : FilePath
                                                            ->{IO} Either
                                                              Error
                                                              EpochTime
    142.  io.IO.getLine_                                    : Handle
                                                            ->{IO} Either
                                                              Error
                                                              Text
    143.  io.IO.getTemporaryDirectory_                      : {IO} (Either
                                                              Error
                                                              FilePath)
    144.  io.IO.getText_                                    : Handle
                                                            ->{IO} Either
                                                              Error
                                                              Text
    145.  io.IO.isDirectory_                                : FilePath
                                                            ->{IO} Either
                                                              Error
                                                              Boolean
    146.  io.IO.isFileEOF_                                  : Handle
                                                            ->{IO} Either
                                                              Error
                                                              Boolean
    147.  io.IO.isFileOpen_                                 : Handle
                                                            ->{IO} Either
                                                              Error
                                                              Boolean
    148.  io.IO.isSeekable_                                 : Handle
                                                            ->{IO} Either
                                                              Error
                                                              Boolean
    149.  io.IO.kill_                                       : ThreadId
                                                            ->{IO} Either
                                                              Error
                                                              ()
    150.  io.IO.listen_                                     : Socket
                                                            ->{IO} Either
                                                              Error
                                                              ()
    151.  io.IO.openFile_                                   : FilePath
                                                            -> Mode
                                                            ->{IO} Either
                                                              Error
                                                              Handle
    152.  io.IO.position_                                   : Handle
                                                            ->{IO} Either
                                                              Error
                                                              Int
    153.  io.IO.putText_                                    : Handle
                                                            -> Text
                                                            ->{IO} Either
                                                              Error
                                                              ()
    154.  io.IO.receive_                                    : Socket
                                                            -> Nat
                                                            ->{IO} Either
                                                              Error
                                                              (Optional
                                                                Bytes)
    155.  io.IO.removeDirectory_                            : FilePath
                                                            ->{IO} Either
                                                              Error
                                                              ()
    156.  io.IO.removeFile_                                 : FilePath
                                                            ->{IO} Either
                                                              Error
                                                              ()
    157.  io.IO.renameDirectory_                            : FilePath
                                                            -> FilePath
                                                            ->{IO} Either
                                                              Error
                                                              ()
    158.  io.IO.renameFile_                                 : FilePath
                                                            -> FilePath
                                                            ->{IO} Either
                                                              Error
                                                              ()
    159.  io.IO.seek_                                       : Handle
                                                            -> SeekMode
                                                            -> Int
                                                            ->{IO} Either
                                                              Error
                                                              ()
    160.  io.IO.send_                                       : Socket
                                                            -> Bytes
                                                            ->{IO} Either
                                                              Error
                                                              ()
    161.  io.IO.serverSocket_                               : Optional
                                                              HostName
                                                            -> ServiceName
                                                            ->{IO} Either
                                                              Error
                                                              Socket
    162.  io.IO.setBuffering_                               : Handle
                                                            -> Optional
                                                              BufferMode
                                                            ->{IO} Either
                                                              Error
                                                              ()
    163.  io.IO.setCurrentDirectory_                        : FilePath
                                                            ->{IO} Either
                                                              Error
                                                              ()
    164.  io.IO.systemTime_                                 : {IO} (Either
                                                              Error
                                                              EpochTime)
    165.  io.IO.throw                                       : Error
                                                            ->{IO} a
    166.  io.Mode.Append                                    : Mode
    167.  io.Mode.Read                                      : Mode
    168.  io.Mode.ReadWrite                                 : Mode
    169.  io.Mode.Write                                     : Mode
    170.  io.SeekMode.Absolute                              : SeekMode
    171.  io.SeekMode.FromEnd                               : SeekMode
    172.  io.SeekMode.Relative                              : SeekMode
    173.  io.ServiceName.ServiceName                        : Text
                                                            -> ServiceName
    174.  io.Socket.Socket                                  : Text
                                                            -> Socket
    175.  io.ThreadId.ThreadId                              : Text
                                                            -> ThreadId
    176.  test.Gen.sample                                   : Weighted
                                                              a
                                                            ->{Gen} a
    177.  test.internals.v1.Domain.Large                    : Weighted
                                                              a
                                                            -> Domain
                                                              a
    178.  test.internals.v1.Domain.Small                    : [a]
                                                            -> Domain
                                                              a
    179.  test.internals.v1.Test.Report.Report              : Trie
                                                              Text
                                                              Status
                                                            -> Report (+1 metadata)
    180.  test.internals.v1.Test.Scope.Scope                : [Text]
                                                            -> Scope
    181.  test.internals.v1.Test.Status.Expected            : Success
                                                            -> Status
    182.  test.internals.v1.Test.Status.Failed              : Status
    183.  test.internals.v1.Test.Status.Pending             : Status
    184.  test.internals.v1.Test.Status.Unexpected          : Success
                                                            -> Status
    185.  test.internals.v1.Test.Success.Passed             : Nat
                                                            -> Success
    186.  test.internals.v1.Test.Success.Proved             : Success
    187.  test.internals.v1.Test.Test.Test                  : (Scope
                                                            -> Report)
                                                            -> Test (+1 metadata)
    188.  .                                                 : (b
                                                            ->{𝕖} c)
                                                            -> (a
                                                            ->{𝕖} b)
                                                            -> a
                                                            ->{𝕖} c
    189.  <|                                                : (a
                                                            ->{𝕖} b)
                                                            -> a
                                                            ->{𝕖} b
    190.  Abort.tests.ex1                                   : [Result] (+4 metadata)
    191.  Abort.tests.ex2                                   : [Result] (+4 metadata)
    192.  Abort.tests.ex3                                   : [Result] (+4 metadata)
    193.  Abort.toOptional                                  : '{g,
                                                            Abort} a
                                                            ->{g} Optional
                                                              a (+2 metadata)
    194.  Abort.toOptional.handler                          : Request
                                                              {Abort}
                                                              a
                                                            -> Optional
                                                              a (+2 metadata)
    195.  Ask.provide                                       : a
                                                            -> '{g,
                                                            Ask
                                                              a} r
                                                            ->{g} r (+2 metadata)
    196.  Ask.provide.handler                               : a
                                                            -> Request
                                                              {Ask
                                                                a}
                                                              r
                                                            -> r (+2 metadata)
    197.  Ask.tests.ex1                                     : [Result] (+4 metadata)
    198.  Author.guid                                       : Author
                                                            -> GUID
    199.  Author.guid.modify                                : (GUID
                                                            ->{𝕖} GUID)
                                                            -> Author
                                                            ->{𝕖} Author
    200.  Author.guid.set                                   : GUID
                                                            -> Author
                                                            -> Author
    201.  Author.name                                       : Author
                                                            -> Text
    202.  Author.name.modify                                : (Text
                                                            ->{𝕖} Text)
                                                            -> Author
                                                            ->{𝕖} Author
    203.  Author.name.set                                   : Text
                                                            -> Author
                                                            -> Author
    204.  Author.toCopyrightHolder                          : Author
                                                            -> CopyrightHolder
    205.  ┌ Bag.*                                           : Bag
                                                              a
                                                            -> Bag
                                                              b
                                                            -> Bag
                                                              ( a,
                                                                b) (+4 metadata)
    206.  └ Bag.product                                     : Bag
                                                              a
                                                            -> Bag
                                                              b
                                                            -> Bag
                                                              ( a,
                                                                b) (+4 metadata)
    207.  ┌ Bag.+                                           : Bag
                                                              a
                                                            -> Bag
                                                              a
                                                            -> Bag
                                                              a (+4 metadata)
    208.  └ Bag.addAll                                      : Bag
                                                              a
                                                            -> Bag
                                                              a
                                                            -> Bag
                                                              a (+4 metadata)
    209.  ┌ Bag.==                                          : Bag
                                                              a
                                                            -> Bag
                                                              a
                                                            -> Boolean (+4 metadata)
    210.  └ Bag.equals                                      : Bag
                                                              a
                                                            -> Bag
                                                              a
                                                            -> Boolean (+4 metadata)
    211.  Bag.add                                           : k
                                                            -> Bag
                                                              k
                                                            -> Bag
                                                              k (+4 metadata)
    212.  Bag.add.doc                                       : Doc (+3 metadata)
    213.  Bag.add.tests.adds                                : [Result] (+4 metadata)
    214.  Bag.addAll.doc                                    : Doc (+3 metadata)
    215.  Bag.addAll.tests.homomorphism                     : [Result] (+4 metadata)
    216.  Bag.addN                                          : Nat
                                                            -> k
                                                            -> Bag
                                                              k
                                                            -> Bag
                                                              k (+4 metadata)
    217.  Bag.addN.doc                                      : Doc (+3 metadata)
    218.  Bag.addN.test                                     : [Result] (+4 metadata)
    219.  Bag.all                                           : (a
                                                            ->{g} Boolean)
                                                            -> Bag
                                                              a
                                                            ->{g} Boolean (+4 metadata)
    220.  Bag.all.doc                                       : Doc (+3 metadata)
    221.  Bag.all.test                                      : [Result] (+4 metadata)
    222.  Bag.any                                           : (a
                                                            ->{g} Boolean)
                                                            -> Bag
                                                              a
                                                            ->{g} Boolean (+4 metadata)
    223.  Bag.any.doc                                       : Doc (+3 metadata)
    224.  Bag.any.test                                      : [Result] (+4 metadata)
    225.  Bag.contains                                      : Bag
                                                              a
                                                            -> a
                                                            -> Boolean (+3 metadata)
    226.  Bag.contains.doc                                  : Doc (+3 metadata)
    227.  Bag.contains.test                                 : [Result] (+4 metadata)
    228.  Bag.convolve                                      : (i
                                                            ->{g} a
                                                            ->{g} t)
                                                            -> Bag
                                                              i
                                                            -> Bag
                                                              a
                                                            ->{g} Bag
                                                              t (+4 metadata)
    229.  Bag.convolve.doc                                  : Doc (+3 metadata)
    230.  Bag.convolve.tests.associative                    : [Result] (+4 metadata)
    231.  Bag.convolve.tests.natural                        : [Result] (+4 metadata)
    232.  Bag.convolve.tests.unit                           : [Result] (+4 metadata)
    233.  Bag.count                                         : a
                                                            -> Bag
                                                              a
                                                            -> Nat (+3 metadata)
    234.  Bag.count.doc                                     : Doc (+3 metadata)
    235.  Bag.count.tests.counts                            : [Result] (+4 metadata)
    236.  Bag.counts                                        : Bag
                                                              a
                                                            -> Map
                                                              a
                                                              Nat (+4 metadata)
    237.  Bag.counts.doc                                    : Doc (+3 metadata)
    238.  Bag.difference                                    : Bag
                                                              a
                                                            -> Bag
                                                              a
                                                            -> Bag
                                                              a (+4 metadata)
    239.  Bag.difference.doc                                : Doc (+3 metadata)
    240.  Bag.difference.tests.homomorphism                 : [Result] (+4 metadata)
    241.  Bag.doc                                           : Doc (+3 metadata)
    242.  Bag.elementOf                                     : a
                                                            -> Bag
                                                              a
                                                            -> Boolean (+3 metadata)
    243.  Bag.elementOf.doc                                 : Doc (+3 metadata)
    244.  Bag.elementOf.test                                : [Result] (+4 metadata)
    245.  Bag.empty                                         : Bag
                                                              a (+3 metadata)
    246.  Bag.empty.doc                                     : Doc (+3 metadata)
    247.  Bag.empty.test                                    : [Result] (+4 metadata)
    248.  Bag.equals.doc                                    : Doc (+3 metadata)
    249.  Bag.equals.tests.reflexive                        : [Result] (+4 metadata)
    250.  Bag.equals.tests.symmetric                        : [Result] (+4 metadata)
    251.  Bag.equals.tests.transitive                       : [Result] (+4 metadata)
    252.  Bag.filter                                        : (i
                                                            ->{e} Boolean)
                                                            -> Bag
                                                              i
                                                            ->{e} Bag
                                                              i (+4 metadata)
    253.  Bag.filter.doc                                    : Doc (+3 metadata)
    254.  Bag.flatMap                                       : (a
                                                            ->{e} Bag
                                                              b)
                                                            -> Bag
                                                              a
                                                            ->{e} Bag
                                                              b (+4 metadata)
    255.  Bag.flatMap.doc                                   : Doc (+3 metadata)
    256.  Bag.flatMap.tests.associative                     : [Result] (+4 metadata)
    257.  Bag.flatMap.tests.unit                            : [Result] (+4 metadata)
    258.  Bag.foldLeft                                      : (b
                                                            ->{g} a
                                                            ->{g} b)
                                                            -> b
                                                            -> Bag
                                                              a
                                                            ->{g} b (+4 metadata)
    259.  Bag.foldLeft.doc                                  : Doc (+3 metadata)
    260.  Bag.foldLeft.tests.asList                         : [Result] (+4 metadata)
    261.  Bag.foldRight                                     : (a
                                                            ->{g} b
                                                            ->{g} b)
                                                            -> b
                                                            -> Bag
                                                              a
                                                            ->{g} b (+4 metadata)
    262.  Bag.foldRight.doc                                 : Doc (+3 metadata)
    263.  Bag.foldRight.tests.asList                        : [Result] (+4 metadata)
    264.  Bag.from                                          : Bag
                                                              a
                                                            -> Bag
                                                              a
                                                            -> Boolean (+4 metadata)
    265.  Bag.from.doc                                      : Doc (+3 metadata)
    266.  Bag.from.tests.subset                             : [Result] (+4 metadata)
    267.  Bag.fromList                                      : [k]
                                                            -> Bag
                                                              k (+4 metadata)
    268.  Bag.fromList.doc                                  : Doc (+3 metadata)
    269.  Bag.fromList.tests.roundtrip                      : [Result] (+4 metadata)
    270.  Bag.fromMap                                       : Map
                                                              k
                                                              Nat
                                                            -> Bag
                                                              k (+3 metadata)
    271.  Bag.fromMap.doc                                   : Doc (+2 metadata)
    272.  Bag.fromMap.tests.roundTrip                       : [Result] (+4 metadata)
    273.  Bag.fromOccurrenceList                            : [( a,
                                                              Nat)]
                                                            -> Bag
                                                              a (+4 metadata)
    274.  Bag.fromOccurrenceList.doc                        : Doc (+3 metadata)
    275.  Bag.fromOccurrenceList.tests.roundTrip            : [Result] (+4 metadata)
    276.  Bag.fromText                                      : Text
                                                            -> Bag
                                                              Char (+4 metadata)
    277.  Bag.fromText.doc                                  : Doc (+3 metadata)
    278.  Bag.fromText.tests.anagram                        : [Result] (+4 metadata)
    279.  Bag.internal.compare                              : (Nat
                                                            ->{e} Nat
                                                            ->{e} Boolean)
                                                            -> Bag
                                                              a
                                                            -> Bag
                                                              a
                                                            ->{e} Boolean (+4 metadata)
    280.  Bag.internal.compare.doc                          : Doc (+3 metadata)
    281.  Bag.internal.normalize                            : Bag
                                                              a
                                                            -> Bag
                                                              a (+3 metadata)
    282.  Bag.intersect                                     : Bag
                                                              a
                                                            -> Bag
                                                              a
                                                            -> Bag
                                                              a (+4 metadata)
    283.  Bag.intersect.doc                                 : Doc (+3 metadata)
    284.  Bag.intersect.tests.commutative                   : [Result] (+4 metadata)
    285.  Bag.intersect.tests.distributive                  : [Result] (+4 metadata)
    286.  Bag.intersect.tests.homomorphism                  : [Result] (+4 metadata)
    287.  Bag.intersect.tests.idempotent                    : [Result] (+4 metadata)
    288.  Bag.intersect.tests.zero                          : [Result] (+4 metadata)
    289.  Bag.isEmpty                                       : Bag
                                                              a
                                                            -> Boolean (+4 metadata)
    290.  Bag.isEmpty.doc                                   : Doc (+3 metadata)
    291.  Bag.isEmpty.test                                  : [Result] (+4 metadata)
    292.  Bag.map                                           : (a
                                                            -> b)
                                                            -> Bag
                                                              a
                                                            -> Bag
                                                              b (+4 metadata)
    293.  Bag.map.doc                                       : Doc (+3 metadata)
    294.  Bag.map.tests.functor                             : [Result] (+4 metadata)
    295.  Bag.mapCounts                                     : (Nat
                                                            ->{e} Nat)
                                                            -> Bag
                                                              a
                                                            ->{e} Bag
                                                              a (+3 metadata)
    296.  Bag.mapCounts.doc                                 : Doc (+3 metadata)
    297.  Bag.mapCounts.tests.functor                       : [Result] (+4 metadata)
    298.  Bag.modify                                        : (( a,
                                                              Nat)
                                                            ->{e} ( b,
                                                              Nat))
                                                            -> Bag
                                                              a
                                                            ->{e} Bag
                                                              b (+4 metadata)
    299.  Bag.modify.doc                                    : Doc (+3 metadata)
    300.  Bag.modify.tests.double                           : [Result] (+4 metadata)
    301.  Bag.modify.tests.functor                          : [Result] (+4 metadata)
    302.  Bag.modify.tests.zero                             : [Result] (+4 metadata)
    303.  Bag.none                                          : (a
                                                            ->{g} Boolean)
                                                            -> Bag
                                                              a
                                                            ->{g} Boolean (+4 metadata)
    304.  Bag.none.doc                                      : Doc (+3 metadata)
    305.  Bag.none.test                                     : [Result] (+4 metadata)
    306.  Bag.occurrenceList                                : Bag
                                                              a
                                                            -> [( a,
                                                              Nat)] (+4 metadata)
    307.  Bag.occurrenceList.doc                            : Doc (+3 metadata)
    308.  Bag.product.doc                                   : Doc (+3 metadata)
    309.  Bag.product.tests.spec                            : [Result] (+4 metadata)
    310.  Bag.remove                                        : k
                                                            -> Bag
                                                              k
                                                            -> Bag
                                                              k (+4 metadata)
    311.  Bag.remove.doc                                    : Doc (+3 metadata)
    312.  Bag.remove.tests.removes                          : [Result] (+4 metadata)
    313.  Bag.removeAll                                     : k
                                                            -> Bag
                                                              k
                                                            -> Bag
                                                              k (+4 metadata)
    314.  Bag.removeAll.doc                                 : Doc (+3 metadata)
    315.  Bag.removeAll.tests.removes                       : [Result] (+4 metadata)
    316.  Bag.removeN                                       : Nat
                                                            -> k
                                                            -> Bag
                                                              k
                                                            -> Bag
                                                              k (+4 metadata)
    317.  Bag.removeN.doc                                   : Doc (+3 metadata)
    318.  Bag.removeN.tests.removes                         : [Result] (+4 metadata)
    319.  Bag.removeWhere                                   : (a
                                                            ->{e} Boolean)
                                                            -> Bag
                                                              a
                                                            ->{e} Bag
                                                              a (+4 metadata)
    320.  Bag.removeWhere.doc                               : Doc (+3 metadata)
    321.  Bag.removeWhere.tests.removes                     : [Result] (+4 metadata)
    322.  Bag.scale                                         : Nat
                                                            -> Bag
                                                              a
                                                            -> Bag
                                                              a (+3 metadata)
    323.  Bag.scale.doc                                     : Doc (+3 metadata)
    324.  Bag.scale.tests.scales                            : [Result] (+4 metadata)
    325.  Bag.singleton                                     : k
                                                            -> Bag
                                                              k (+3 metadata)
    326.  Bag.singleton.doc                                 : Doc (+3 metadata)
    327.  Bag.singleton.tests.one                           : [Result] (+4 metadata)
    328.  Bag.size                                          : Bag
                                                              a
                                                            -> Nat (+3 metadata)
    329.  Bag.size.doc                                      : Doc (+3 metadata)
    330.  Bag.size.test                                     : [Result] (+4 metadata)
    331.  Bag.subbag                                        : Bag
                                                              a
                                                            -> Bag
                                                              a
                                                            -> Boolean (+4 metadata)
    332.  Bag.subbag.doc                                    : Doc (+3 metadata)
    333.  Bag.subbag.tests.homomorphism                     : [Result] (+4 metadata)
    334.  Bag.superbag                                      : Bag
                                                              a
                                                            -> Bag
                                                              a
                                                            -> Boolean (+4 metadata)
    335.  Bag.superbag.doc                                  : Doc (+3 metadata)
    336.  Bag.superbag.tests.homomorphism                   : [Result] (+4 metadata)
    337.  Bag.tests.bagOf                                   : '{Gen} a
                                                            -> '{Gen} Bag
                                                              a (+4 metadata)
    338.  Bag.tests.bagOf.doc                               : Doc (+3 metadata)
    339.  Bag.toList                                        : Bag
                                                              a
                                                            -> [a] (+4 metadata)
    340.  Bag.toList.doc                                    : Doc (+3 metadata)
    341.  Bag.toList.tests.roundtrip                        : [Result] (+4 metadata)
    342.  Bag.toSet                                         : Bag
                                                              a
                                                            -> Set
                                                              a (+4 metadata)
    343.  Bag.toSet.doc                                     : Doc (+3 metadata)
    344.  Bag.toSet.tests.roundtrip                         : [Result] (+4 metadata)
    345.  Bag.toText                                        : Bag
                                                              Char
                                                            -> Text (+4 metadata)
    346.  Bag.toText.doc                                    : Doc (+3 metadata)
    347.  Bag.toText.tests.roundtrip                        : [Result] (+4 metadata)
    348.  Bag.traverse                                      : (a
                                                            ->{e} b)
                                                            -> Bag
                                                              a
                                                            ->{e} Bag
                                                              b (+4 metadata)
    349.  Bag.traverse.doc                                  : Doc (+3 metadata)
    350.  Bag.traverse.tests.functor                        : [Result] (+4 metadata)
    351.  Bag.union                                         : Bag
                                                              a
                                                            -> Bag
                                                              a
                                                            -> Bag
                                                              a (+4 metadata)
    352.  Bag.union.doc                                     : Doc (+3 metadata)
    353.  Bag.union.tests.commutative                       : [Result] (+4 metadata)
    354.  Bag.union.tests.distributive                      : [Result] (+4 metadata)
    355.  Bag.union.tests.homomorphism                      : [Result] (+4 metadata)
    356.  Bag.union.tests.idempotent                        : [Result] (+4 metadata)
    357.  Bag.union.tests.unit                              : [Result] (+4 metadata)
    358.  Boolean.and                                       : Boolean
                                                            -> Boolean
                                                            -> Boolean (+3 metadata)
    359.  Boolean.and.doc                                   : Doc (+2 metadata)
    360.  Boolean.given                                     : Boolean
                                                            -> Boolean
                                                            -> Boolean (+3 metadata)
    361.  Boolean.given.doc                                 : Doc (+2 metadata)
    362.  Boolean.given.test                                : [Result] (+6 metadata)
    363.  Boolean.implies                                   : Boolean
                                                            -> Boolean
                                                            -> Boolean (+3 metadata)
    364.  Boolean.implies.doc                               : Doc (+2 metadata)
    365.  Boolean.implies.test                              : [Result] (+6 metadata)
    366.  Boolean.not                                       : Boolean
                                                            -> Boolean
    367.  Boolean.or                                        : Boolean
                                                            -> Boolean
                                                            -> Boolean (+3 metadata)
    368.  Boolean.or.doc                                    : Doc (+2 metadata)
    369.  Boolean.xor                                       : Boolean
                                                            -> Boolean
                                                            -> Boolean (+3 metadata)
    370.  Boolean.xor.doc                                   : Doc (+2 metadata)
    371.  Boolean.xor.test                                  : [Result] (+6 metadata)
    372.  Bytes.++                                          : Bytes
                                                            -> Bytes
                                                            -> Bytes
    373.  Bytes.at                                          : Nat
                                                            -> Bytes
                                                            -> Optional
                                                              Nat
    374.  Bytes.drop                                        : Nat
                                                            -> Bytes
                                                            -> Bytes
    375.  Bytes.empty                                       : Bytes
    376.  Bytes.flatten                                     : Bytes
                                                            -> Bytes
    377.  Bytes.fromList                                    : [Nat]
                                                            -> Bytes
    378.  Bytes.size                                        : Bytes
                                                            -> Nat
    379.  Bytes.take                                        : Nat
                                                            -> Bytes
                                                            -> Bytes
    380.  Bytes.toList                                      : Bytes
                                                            -> [Nat]
    381.  Char.ascii.doc                                    : Doc (+2 metadata)
    382.  Char.ascii.isAlphaNum                             : Char
                                                            -> Boolean (+3 metadata)
    383.  Char.ascii.isAlphaNum.doc                         : Doc (+2 metadata)
    384.  Char.ascii.isAscii                                : Char
                                                            -> Boolean (+3 metadata)
    385.  Char.ascii.isAscii.doc                            : Doc (+2 metadata)
    386.  Char.ascii.isBlank                                : Char
                                                            -> Boolean (+3 metadata)
    387.  Char.ascii.isBlank.doc                            : Doc (+2 metadata)
    388.  Char.ascii.isControl                              : Char
                                                            -> Boolean (+3 metadata)
    389.  Char.ascii.isControl.doc                          : Doc (+2 metadata)
    390.  Char.ascii.isDigit                                : Char
                                                            -> Boolean (+3 metadata)
    391.  Char.ascii.isDigit.doc                            : Doc (+2 metadata)
    392.  Char.ascii.isGraph                                : Char
                                                            -> Boolean (+3 metadata)
    393.  Char.ascii.isGraph.doc                            : Doc (+2 metadata)
    394.  Char.ascii.isHexDigit                             : Char
                                                            -> Boolean (+3 metadata)
    395.  Char.ascii.isHexDigit.doc                         : Doc (+2 metadata)
    396.  Char.ascii.isLetter                               : Char
                                                            -> Boolean (+3 metadata)
    397.  Char.ascii.isLetter.doc                           : Doc (+2 metadata)
    398.  Char.ascii.isLower                                : Char
                                                            -> Boolean (+3 metadata)
    399.  Char.ascii.isLower.doc                            : Doc (+2 metadata)
    400.  Char.ascii.isPrint                                : Char
                                                            -> Boolean (+3 metadata)
    401.  Char.ascii.isPrint.doc                            : Doc (+2 metadata)
    402.  Char.ascii.isPunct                                : Char
                                                            -> Boolean (+3 metadata)
    403.  Char.ascii.isPunct.doc                            : Doc (+2 metadata)
    404.  Char.ascii.isSpace                                : Char
                                                            -> Boolean (+3 metadata)
    405.  Char.ascii.isSpace.doc                            : Doc (+2 metadata)
    406.  Char.ascii.isUpper                                : Char
                                                            -> Boolean (+3 metadata)
    407.  Char.ascii.isUpper.doc                            : Doc (+2 metadata)
    408.  Char.ascii.lowerUpperDiff                         : Int (+3 metadata)
    409.  Char.ascii.lowerUpperDiff.doc                     : Doc (+2 metadata)
    410.  Char.ascii.tests.propUpperLower                   : [Result] (+7 metadata)
    411.  Char.ascii.tests.propUpperLower.doc               : Doc (+2 metadata)
    412.  Char.ascii.tests.toLower                          : [Result] (+4 metadata)
    413.  Char.ascii.tests.toUpper                          : [Result] (+4 metadata)
    414.  Char.ascii.toLower                                : Char
                                                            -> Char (+3 metadata)
    415.  Char.ascii.toLower.doc                            : Doc (+2 metadata)
    416.  Char.ascii.toUpper                                : Char
                                                            -> Char (+3 metadata)
    417.  Char.ascii.toUpper.doc                            : Doc (+2 metadata)
    418.  Char.fromNat                                      : Nat
                                                            -> Char
    419.  Char.inRange                                      : Char
                                                            -> Char
                                                            -> Char
                                                            -> Boolean (+3 metadata)
    420.  Char.inRange.doc                                  : Doc (+2 metadata)
    421.  Char.toNat                                        : Char
                                                            -> Nat
    422.  CopyrightHolder.guid                              : CopyrightHolder
                                                            -> GUID
    423.  CopyrightHolder.guid.modify                       : (GUID
                                                            ->{𝕖} GUID)
                                                            -> CopyrightHolder
                                                            ->{𝕖} CopyrightHolder
    424.  CopyrightHolder.guid.set                          : GUID
                                                            -> CopyrightHolder
                                                            -> CopyrightHolder
    425.  CopyrightHolder.name                              : CopyrightHolder
                                                            -> Text
    426.  CopyrightHolder.name.modify                       : (Text
                                                            ->{𝕖} Text)
                                                            -> CopyrightHolder
                                                            ->{𝕖} CopyrightHolder
    427.  CopyrightHolder.name.set                          : Text
                                                            -> CopyrightHolder
                                                            -> CopyrightHolder
    428.  Debug.watch                                       : Text
                                                            -> a
                                                            -> a
    429.  Doc.++                                            : Doc
                                                            -> Doc
                                                            -> Doc
    430.  Doc.example                                       : Term
                                                            -> Doc (+3 metadata)
    431.  Doc.example.doc                                   : Doc (+2 metadata)
    432.  Either.fold                                       : (a
                                                            ->{e} c)
                                                            -> (b
                                                            ->{e} c)
                                                            -> Either
                                                              a
                                                              b
                                                            ->{e} c (+5 metadata)
    433.  Either.fold.doc                                   : Doc (+3 metadata)
    434.  Either.left                                       : Either
                                                              l
                                                              r
                                                            -> Optional
                                                              l (+4 metadata)
    435.  Either.left.doc                                   : Doc (+3 metadata)
    436.  Either.mapLeft                                    : (a
                                                            ->{𝕖} b)
                                                            -> Either
                                                              a
                                                              z
                                                            ->{𝕖} Either
                                                              b
                                                              z (+1 metadata)
    437.  Either.mapLeft.doc                                : Doc (+2 metadata)
    438.  Either.mapLeft.tests.ex1                          : [Result] (+4 metadata)
    439.  Either.mapRight                                   : (a
                                                            ->{𝕖} b)
                                                            -> Either
                                                              e
                                                              a
                                                            ->{𝕖} Either
                                                              e
                                                              b (+1 metadata)
    440.  Either.mapRight.doc                               : Doc (+2 metadata)
    441.  Either.mapRight.tests.ex1                         : [Result] (+4 metadata)
    442.  Either.right                                      : Either
                                                              l
                                                              r
                                                            -> Optional
                                                              r (+4 metadata)
    443.  Either.right.doc                                  : Doc (+3 metadata)
    444.  Either.toException                                : Either
                                                              e
                                                              a
                                                            ->{Exception
                                                              e} a (+2 metadata)
    445.  Either.unwrap                                     : Either
                                                              a
                                                              a
                                                            -> a (+4 metadata)
    446.  Either.unwrap.doc                                 : Doc (+3 metadata)
    447.  Exception.tests.ex1                               : [Result] (+4 metadata)
    448.  Exception.tests.ex2                               : [Result] (+4 metadata)
    449.  Exception.tests.ex3                               : [Result] (+4 metadata)
    450.  Exception.toEither                                : '{g,
                                                            Exception
                                                              e} a
                                                            ->{g} Either
                                                              e
                                                              a (+2 metadata)
    451.  Exception.toEither.handler                        : Request
                                                              {Exception
                                                                e}
                                                              a
                                                            -> Either
                                                              e
                                                              a (+2 metadata)
    452.  Float.*                                           : Float
                                                            -> Float
                                                            -> Float
    453.  Float.+                                           : Float
                                                            -> Float
                                                            -> Float
    454.  Float.-                                           : Float
                                                            -> Float
                                                            -> Float
    455.  Float./                                           : Float
                                                            -> Float
                                                            -> Float
    456.  Float.abs                                         : Float
                                                            -> Float
    457.  Float.acos                                        : Float
                                                            -> Float
    458.  Float.acosh                                       : Float
                                                            -> Float
    459.  Float.asin                                        : Float
                                                            -> Float
    460.  Float.asinh                                       : Float
                                                            -> Float
    461.  Float.atan                                        : Float
                                                            -> Float
    462.  Float.atan2                                       : Float
                                                            -> Float
                                                            -> Float
    463.  Float.atanh                                       : Float
                                                            -> Float
    464.  Float.ceiling                                     : Float
                                                            -> Int
    465.  Float.cos                                         : Float
                                                            -> Float
    466.  Float.cosh                                        : Float
                                                            -> Float
    467.  Float.eq                                          : Float
                                                            -> Float
                                                            -> Boolean
    468.  Float.exp                                         : Float
                                                            -> Float
    469.  Float.floor                                       : Float
                                                            -> Int
    470.  Float.fromText                                    : Text
                                                            -> Optional
                                                              Float
    471.  Float.gt                                          : Float
                                                            -> Float
                                                            -> Boolean
    472.  Float.gteq                                        : Float
                                                            -> Float
                                                            -> Boolean
    473.  Float.log                                         : Float
                                                            -> Float
    474.  Float.logBase                                     : Float
                                                            -> Float
                                                            -> Float
    475.  Float.lt                                          : Float
                                                            -> Float
                                                            -> Boolean
    476.  Float.lteq                                        : Float
                                                            -> Float
                                                            -> Boolean
    477.  Float.max                                         : Float
                                                            -> Float
                                                            -> Float
    478.  Float.min                                         : Float
                                                            -> Float
                                                            -> Float
    479.  Float.pow                                         : Float
                                                            -> Float
                                                            -> Float
    480.  Float.round                                       : Float
                                                            -> Int
    481.  Float.sin                                         : Float
                                                            -> Float
    482.  Float.sinh                                        : Float
                                                            -> Float
    483.  Float.sqrt                                        : Float
                                                            -> Float
    484.  Float.tan                                         : Float
                                                            -> Float
    485.  Float.tanh                                        : Float
                                                            -> Float
    486.  Float.toText                                      : Float
                                                            -> Text
    487.  Float.truncate                                    : Float
                                                            -> Int
    488.  Function.curry                                    : (( a,
                                                              b)
                                                            ->{e} c)
                                                            -> a
                                                            -> b
                                                            ->{e} c (+3 metadata)
    489.  Function.curry.doc                                : Doc (+2 metadata)
    490.  Function.fix                                      : ('{e} a
                                                            ->{e} a)
                                                            ->{e} a (+3 metadata)
    491.  Function.fix.doc                                  : Doc (+2 metadata)
    492.  Function.fix.examples.factorial.explicitRecursion : Nat (+2 metadata)
    493.  Function.fix.examples.factorial.fixpoint          : Nat (+2 metadata)
    494.  Function.flatMap                                  : (a
                                                            -> r
                                                            ->{e} b)
                                                            -> (r
                                                            ->{e} a)
                                                            -> r
                                                            ->{e} b (+3 metadata)
    495.  Function.flatMap.doc                              : Doc (+2 metadata)
    496.  Function.flip                                     : (a
                                                            ->{e} b
                                                            ->{e} c)
                                                            -> b
                                                            -> a
                                                            ->{e} c (+3 metadata)
    497.  Function.flip.doc                                 : Doc (+2 metadata)
    498.  Function.on                                       : (b
                                                            ->{e} b
                                                            ->{e} c)
                                                            -> (a
                                                            ->{e} b)
                                                            -> a
                                                            -> a
                                                            ->{e} c
    499.  Function.on.doc                                   : Doc (+2 metadata)
    500.  Function.on.examples.equalOn                      : Boolean (+2 metadata)
    501.  Function.uncurry                                  : (a
                                                            ->{e} b
                                                            ->{e} c)
                                                            -> ( a,
                                                              b)
                                                            ->{e} c (+3 metadata)
    502.  Function.uncurry.doc                              : Doc (+2 metadata)
    503.  Heap.children                                     : Heap
                                                              k
                                                              v
                                                            -> [Heap
                                                              k
                                                              v]
    504.  Heap.fromKeys                                     : [a]
                                                            -> Optional
                                                              (Heap
                                                                a
                                                                a)
    505.  Heap.fromList                                     : [( k,
                                                              v)]
                                                            -> Optional
                                                              (Heap
                                                                k
                                                                v)
    506.  Heap.max                                          : Heap
                                                              k
                                                              v
                                                            -> ( k,
                                                              v)
    507.  Heap.maxKey                                       : Heap
                                                              k
                                                              v
                                                            -> k
    508.  Heap.pop                                          : Heap
                                                              k
                                                              v
                                                            -> Optional
                                                              (Heap
                                                                k
                                                                v)
    509.  Heap.singleton                                    : k
                                                            -> v
                                                            -> Heap
                                                              k
                                                              v
    510.  Heap.size                                         : Heap
                                                              k
                                                              v
                                                            -> Nat
    511.  Heap.sort                                         : [a]
                                                            -> [a]
    512.  Heap.sortDescending                               : [a]
                                                            -> [a]
    513.  Heap.union                                        : Heap
                                                              k
                                                              v
                                                            -> Heap
                                                              k
                                                              v
                                                            -> Heap
                                                              k
                                                              v
    514.  Int.*                                             : Int
                                                            -> Int
                                                            -> Int
    515.  Int.+                                             : Int
                                                            -> Int
                                                            -> Int
    516.  Int.-                                             : Int
                                                            -> Int
                                                            -> Int
    517.  Int./                                             : Int
                                                            -> Int
                                                            -> Int
    518.  Int.and                                           : Int
                                                            -> Int
                                                            -> Int
    519.  Int.complement                                    : Int
                                                            -> Int
    520.  Int.decrement                                     : Int
                                                            -> Int (+3 metadata)
    521.  Int.decrement.doc                                 : Doc (+2 metadata)
    522.  Int.decrement.test                                : [Result] (+4 metadata)
    523.  Int.eq                                            : Int
                                                            -> Int
                                                            -> Boolean
    524.  Int.fromText                                      : Text
                                                            -> Optional
                                                              Int
    525.  Int.gt                                            : Int
                                                            -> Int
                                                            -> Boolean
    526.  Int.gteq                                          : Int
                                                            -> Int
                                                            -> Boolean
    527.  Int.inRange                                       : Int
                                                            -> Int
                                                            -> Int
                                                            -> Boolean (+3 metadata)
    528.  Int.inRange.doc                                   : Doc (+2 metadata)
    529.  Int.inRange.test                                  : [Result] (+4 metadata)
    530.  Int.increment                                     : Int
                                                            -> Int
    531.  Int.isEven                                        : Int
                                                            -> Boolean
    532.  Int.isOdd                                         : Int
                                                            -> Boolean
    533.  Int.leadingZeros                                  : Int
                                                            -> Nat
    534.  Int.lt                                            : Int
                                                            -> Int
                                                            -> Boolean
    535.  Int.lteq                                          : Int
                                                            -> Int
                                                            -> Boolean
    536.  Int.maxInt                                        : Int
    537.  Int.minInt                                        : Int
    538.  Int.mod                                           : Int
                                                            -> Int
                                                            -> Int
    539.  Int.negate                                        : Int
                                                            -> Int
    540.  Int.or                                            : Int
                                                            -> Int
                                                            -> Int
    541.  Int.pow                                           : Int
                                                            -> Nat
                                                            -> Int
    542.  Int.range                                         : Int
                                                            -> Int
                                                            -> [Int] (+2 metadata)
    543.  Int.shiftLeft                                     : Int
                                                            -> Nat
                                                            -> Int
    544.  Int.shiftRight                                    : Int
                                                            -> Nat
                                                            -> Int
    545.  Int.signum                                        : Int
                                                            -> Int
    546.  Int.toFloat                                       : Int
                                                            -> Float
    547.  Int.toText                                        : Int
                                                            -> Text
    548.  Int.trailingZeros                                 : Int
                                                            -> Nat
    549.  Int.truncate0                                     : Int
                                                            -> Nat
    550.  Int.xor                                           : Int
                                                            -> Int
                                                            -> Int
    551.  License.copyrightHolders                          : License
                                                            -> [CopyrightHolder]
    552.  License.copyrightHolders.modify                   : ([CopyrightHolder]
                                                            ->{𝕖} [CopyrightHolder])
                                                            -> License
                                                            ->{𝕖} License
    553.  License.copyrightHolders.set                      : [CopyrightHolder]
                                                            -> License
                                                            -> License
    554.  License.licenseType                               : License
                                                            -> LicenseType
    555.  License.licenseType.modify                        : (LicenseType
                                                            ->{𝕖} LicenseType)
                                                            -> License
                                                            ->{𝕖} License
    556.  License.licenseType.set                           : LicenseType
                                                            -> License
                                                            -> License
    557.  License.years                                     : License
                                                            -> [Year]
    558.  License.years.modify                              : ([Year]
                                                            ->{𝕖} [Year])
                                                            -> License
                                                            ->{𝕖} License
    559.  License.years.set                                 : [Year]
                                                            -> License
                                                            -> License
    560.  List.++                                           : [a]
                                                            -> [a]
                                                            -> [a]
    561.  ┌ List.+:                                         : a
                                                            -> [a]
                                                            -> [a]
    562.  └ List.cons                                       : a
                                                            -> [a]
                                                            -> [a]
    563.  ┌ List.:+                                         : [a]
                                                            -> a
                                                            -> [a]
    564.  └ List.snoc                                       : [a]
                                                            -> a
                                                            -> [a]
    565.  ┌ List.Nonempty.++                                : Nonempty
                                                              a
                                                            -> Nonempty
                                                              a
                                                            -> Nonempty
                                                              a (+3 metadata)
    566.  └ List.Nonempty.append                            : Nonempty
                                                              a
                                                            -> Nonempty
                                                              a
                                                            -> Nonempty
                                                              a (+3 metadata)
    567.  List.Nonempty.+|                                  : a
                                                            -> [a]
                                                            -> Nonempty
                                                              a (+4 metadata)
    568.  List.Nonempty.append.doc                          : Doc (+2 metadata)
    569.  List.Nonempty.append.tests.associative            : [Result] (+4 metadata)
    570.  List.Nonempty.append.tests.homomorphism           : [Result] (+4 metadata)
    571.  List.Nonempty.cons                                : a
                                                            -> Nonempty
                                                              a
                                                            -> Nonempty
                                                              a (+3 metadata)
    572.  List.Nonempty.cons.doc                            : Doc (+2 metadata)
    573.  List.Nonempty.doc                                 : Doc (+2 metadata)
    574.  List.Nonempty.examples.construction.ex1           : Nonempty
                                                              Nat (+2 metadata)
    575.  List.Nonempty.examples.construction.ex2           : Optional
                                                              (Nonempty
                                                                Nat) (+2 metadata)
    576.  List.Nonempty.flatMap                             : (a
                                                            ->{e} Nonempty
                                                              b)
                                                            -> Nonempty
                                                              a
                                                            ->{e} Nonempty
                                                              b (+3 metadata)
    577.  List.Nonempty.flatMap.doc                         : Doc (+2 metadata)
    578.  List.Nonempty.flatMap.tests.flatMapIdIsjoin       : [Result] (+4 metadata)
    579.  List.Nonempty.foldLeft                            : (b
                                                            ->{e} a
                                                            ->{e} b)
                                                            -> b
                                                            -> Nonempty
                                                              a
                                                            ->{e} b (+3 metadata)
    580.  ┌ List.Nonempty.foldLeft.doc                      : Doc (+2 metadata)
    581.  └ List.foldLeft.doc                               : Doc (+2 metadata)
    582.  List.Nonempty.foldLeft.tests.listConsistency      : [Result] (+6 metadata)
    583.  List.Nonempty.foldLeft.tests.multiple             : [Result] (+4 metadata)
    584.  List.Nonempty.foldLeft.tests.single               : [Result] (+4 metadata)
    585.  List.Nonempty.foldMap                             : (b
                                                            ->{e} b
                                                            ->{e} b)
                                                            -> (a
                                                            ->{e} b)
                                                            -> Nonempty
                                                              a
                                                            ->{e} b (+3 metadata)
    586.  List.Nonempty.foldMap.doc                         : Doc (+2 metadata)
    587.  List.Nonempty.foldMap.examples.ex1                : Text (+2 metadata)
    588.  List.Nonempty.foldMap.test                        : [Result] (+4 metadata)
    589.  List.Nonempty.foldRight                           : (a
                                                            ->{e} b
                                                            ->{e} b)
                                                            -> b
                                                            -> Nonempty
                                                              a
                                                            ->{e} b (+2 metadata)
    590.  List.Nonempty.foldRight.tests.listConsistency     : [Result] (+6 metadata)
    591.  List.Nonempty.foldRight.tests.multiple            : [Result] (+4 metadata)
    592.  List.Nonempty.foldRight.tests.single              : [Result] (+4 metadata)
    593.  List.Nonempty.head                                : Nonempty
                                                              a
                                                            -> a (+3 metadata)
    594.  List.Nonempty.head.doc                            : Doc (+2 metadata)
    595.  List.Nonempty.head.test                           : [Result] (+4 metadata)
    596.  List.Nonempty.init                                : Nonempty
                                                              a
                                                            -> [a] (+3 metadata)
    597.  List.Nonempty.init.doc                            : Doc (+2 metadata)
    598.  List.Nonempty.init.test                           : [Result] (+4 metadata)
    599.  List.Nonempty.join                                : Nonempty
                                                              (Nonempty
                                                                a)
                                                            -> Nonempty
                                                              a (+3 metadata)
    600.  List.Nonempty.join.doc                            : Doc (+2 metadata)
    601.  List.Nonempty.join.examples.ex1                   : Nonempty
                                                              Nat (+2 metadata)
    602.  List.Nonempty.join.tests.associative              : [Result] (+4 metadata)
    603.  List.Nonempty.join.tests.unit                     : [Result] (+4 metadata)
    604.  List.Nonempty.last                                : Nonempty
                                                              a
                                                            -> a (+3 metadata)
    605.  List.Nonempty.last.doc                            : Doc (+2 metadata)
    606.  List.Nonempty.last.test                           : [Result] (+4 metadata)
    607.  List.Nonempty.map                                 : (a
                                                            ->{e} b)
                                                            -> Nonempty
                                                              a
                                                            ->{e} Nonempty
                                                              b (+3 metadata)
    608.  List.Nonempty.map.doc                             : Doc (+2 metadata)
    609.  List.Nonempty.map.tests.functor                   : [Result] (+4 metadata)
    610.  List.Nonempty.reduceLeft                          : (a
                                                            ->{e} a
                                                            ->{e} a)
                                                            -> Nonempty
                                                              a
                                                            ->{e} a (+3 metadata)
    611.  List.Nonempty.reduceLeft.doc                      : Doc (+2 metadata)
    612.  List.Nonempty.reduceLeft.test                     : [Result] (+4 metadata)
    613.  List.Nonempty.reduceRight                         : (a
                                                            ->{e} a
                                                            ->{e} a)
                                                            -> Nonempty
                                                              a
                                                            ->{e} a (+3 metadata)
    614.  List.Nonempty.reduceRight.doc                     : Doc (+2 metadata)
    615.  List.Nonempty.reduceRight.test                    : [Result] (+4 metadata)
    616.  List.Nonempty.scanl                               : (a
                                                            ->{e} a
                                                            ->{e} a)
                                                            -> Nonempty
                                                              a
                                                            ->{e} Nonempty
                                                              a (+3 metadata)
    617.  List.Nonempty.scanl.doc                           : Doc (+2 metadata)
    618.  List.Nonempty.scanl.examples.asDoc                : Doc (+2 metadata)
    619.  List.Nonempty.scanl.test                          : [Result] (+4 metadata)
    620.  List.Nonempty.scanr                               : (a
                                                            ->{e} a
                                                            ->{e} a)
                                                            -> Nonempty
                                                              a
                                                            ->{e} Nonempty
                                                              a (+3 metadata)
    621.  List.Nonempty.scanr.doc                           : Doc (+2 metadata)
    622.  List.Nonempty.scanr.examples.asDoc                : Doc (+2 metadata)
    623.  List.Nonempty.scanr.test                          : [Result] (+4 metadata)
    624.  List.Nonempty.singleton                           : a
                                                            -> Nonempty
                                                              a (+3 metadata)
    625.  List.Nonempty.singleton.doc                       : Doc (+2 metadata)
    626.  List.Nonempty.singleton.test                      : [Result] (+4 metadata)
    627.  List.Nonempty.size                                : Nonempty
                                                              a
                                                            -> Nat (+3 metadata)
    628.  List.Nonempty.size.doc                            : Doc (+2 metadata)
    629.  List.Nonempty.size.test                           : [Result] (+4 metadata)
    630.  List.Nonempty.snoc                                : Nonempty
                                                              a
                                                            -> a
                                                            -> Nonempty
                                                              a (+3 metadata)
    631.  List.Nonempty.snoc.doc                            : Doc (+2 metadata)
    632.  List.Nonempty.tail                                : Nonempty
                                                              a
                                                            -> [a] (+3 metadata)
    633.  List.Nonempty.tail.doc                            : Doc (+2 metadata)
    634.  List.Nonempty.tail.test                           : [Result] (+4 metadata)
    635.  List.Nonempty.toList                              : Nonempty
                                                              a
                                                            -> [a] (+3 metadata)
    636.  List.Nonempty.toList.doc                          : Doc (+2 metadata)
    637.  List.Nonempty.|+                                  : [a]
                                                            -> a
                                                            -> Nonempty
                                                              a (+2 metadata)
    638.  List.all                                          : (a
                                                            ->{e} Boolean)
                                                            -> [a]
                                                            ->{e} Boolean (+3 metadata)
    639.  List.all.doc                                      : Doc (+2 metadata)
    640.  List.all.tests.deMorgan                           : [Result] (+4 metadata)
    641.  List.all.tests.homomorphism                       : [Result] (+4 metadata)
    642.  List.any                                          : (a
                                                            ->{e} Boolean)
                                                            -> [a]
                                                            ->{e} Boolean (+3 metadata)
    643.  List.any.doc                                      : Doc (+2 metadata)
    644.  List.any.tests.deMorgan                           : [Result] (+4 metadata)
    645.  List.any.tests.homomorphism                       : [Result] (+4 metadata)
    646.  List.at                                           : Nat
                                                            -> [a]
                                                            -> Optional
                                                              a
    647.  List.concatOptional                               : Optional
                                                              [a]
                                                            -> [a] (+3 metadata)
    648.  List.concatOptional.doc                           : Doc (+2 metadata)
    649.  List.concatOptional.tests.prop1                   : [Result] (+6 metadata)
    650.  List.concatOptional.tests.test1                   : [Result] (+4 metadata)
    651.  ┌ List.contains                                   : a
                                                            -> [a]
                                                            -> Boolean (+3 metadata)
    652.  └ Search.elem                                     : a
                                                            -> [a]
                                                            -> Boolean (+3 metadata)
    653.  ┌ List.contains.tests.prop1                       : [Result] (+6 metadata)
    654.  └ Search.elem.tests.positive                      : [Result] (+4 metadata)
    655.  List.deleteAt                                     : Nat
                                                            -> [a]
                                                            -> [a] (+3 metadata)
    656.  List.deleteAt.doc                                 : Doc (+2 metadata)
    657.  List.deleteAt.test                                : [Result] (+4 metadata)
    658.  List.diagonal                                     : [[a]]
                                                            -> [a]
    659.  List.distinct                                     : [a]
                                                            -> [a] (+1 metadata)
    660.  List.distinctBy                                   : (a
                                                            ->{g} b)
                                                            -> [a]
                                                            ->{g} [a] (+4 metadata)
    661.  List.distinctBy.doc                               : Doc (+3 metadata)
    662.  List.distinctBy.tests.removesDuplicates           : [Result] (+4 metadata)
    663.  List.drop                                         : Nat
                                                            -> [a]
                                                            -> [a]
    664.  List.dropLast                                     : [a]
                                                            -> [a] (+2 metadata)
    665.  List.dropWhile                                    : (a
                                                            ->{e} Boolean)
                                                            -> [a]
                                                            ->{e} [a] (+5 metadata)
    666.  List.dropWhile.doc                                : Doc (+5 metadata)
    667.  List.dropWhile.examples.ex1                       : [Nat] (+3 metadata)
    668.  List.dropWhile.examples.ex1.asDoc                 : Doc (+3 metadata)
    669.  List.dropWhile.tests.all                          : [Result] (+4 metadata)
    670.  List.dropWhile.tests.middle                       : [Result] (+4 metadata)
    671.  List.dropWhile.tests.none                         : [Result] (+4 metadata)
    672.  ┌ List.empty                                      : [a] (+2 metadata)
    673.  └ List.last.examples.empty                        : [a] (+1 metadata)
    674.  List.fill                                         : Nat
                                                            -> a
                                                            -> [a] (+5 metadata)
    675.  List.fill.doc                                     : Doc (+3 metadata)
    676.  List.fill.examples.ex1                            : [Text] (+3 metadata)
    677.  List.fill.tests.ex1                               : [Result] (+4 metadata)
    678.  List.filter                                       : (a
                                                            ->{𝕖} Boolean)
                                                            -> [a]
                                                            ->{𝕖} [a] (+3 metadata)
    679.  List.filter.doc                                   : Doc (+2 metadata)
    680.  List.filter.tests.empty                           : [Result] (+4 metadata)
    681.  List.filter.tests.negative                        : [Result] (+4 metadata)
    682.  List.filter.tests.positive                        : [Result] (+4 metadata)
    683.  List.filterMap                                    : (a
                                                            ->{𝕖} Optional
                                                              b)
                                                            -> [a]
                                                            ->{𝕖} [b] (+3 metadata)
    684.  List.filterMap.doc                                : Doc (+3 metadata)
    685.  List.filterMap.examples.ex1                       : [Nat] (+5 metadata)
    686.  List.flatMap                                      : (a
                                                            ->{e} [b])
                                                            -> [a]
                                                            ->{e} [b] (+5 metadata)
    687.  List.flatMap.doc                                  : Doc (+2 metadata)
    688.  List.flatMap.examples.ex1                         : [Nat] (+4 metadata)
    689.  List.flatMap.examples.ex2                         : [Nat] (+4 metadata)
    690.  List.flatMap.tests.flatMapIdentityIsJoin          : [Result] (+4 metadata)
    691.  List.foldLeft                                     : (b
                                                            ->{𝕖} a
                                                            ->{𝕖} b)
                                                            -> b
                                                            -> [a]
                                                            ->{𝕖} b (+1 metadata)
    692.  List.foldRight                                    : (a
                                                            ->{e} b
                                                            ->{e} b)
                                                            -> b
                                                            -> [a]
                                                            ->{e} b (+3 metadata)
    693.  List.foldRight.doc                                : Doc (+2 metadata)
    694.  List.foldRight.tests.homomorphism                 : [Result] (+4 metadata)
    695.  List.foldb                                        : (a
                                                            ->{𝕖} b)
                                                            -> (b
                                                            ->{𝕖} b
                                                            ->{𝕖} b)
                                                            -> b
                                                            -> [a]
                                                            ->{𝕖} b
    696.  List.groupBy                                      : (v
                                                            ->{e} k)
                                                            -> [v]
                                                            ->{e} Map
                                                              k
                                                              (Nonempty
                                                                v) (+4 metadata)
    697.  List.groupBy.doc                                  : Doc (+3 metadata)
    698.  ┌ List.groupBy.examples.ex1                       : [[Nat]] (+3 metadata)
    699.  └ List.groupSublistsBy.examples.ex1               : [[Nat]] (+3 metadata)
    700.  ┌ List.groupBy.examples.ex1.asDoc                 : Doc (+3 metadata)
    701.  └ List.groupSublistsBy.examples.ex1.asDoc         : Doc (+3 metadata)
    702.  ┌ List.groupBy.examples.ex2                       : [[Nat]] (+3 metadata)
    703.  └ List.groupSublistsBy.examples.ex2               : [[Nat]] (+3 metadata)
    704.  ┌ List.groupBy.examples.ex2.asDoc                 : Doc (+3 metadata)
    705.  └ List.groupSublistsBy.examples.ex2.asDoc         : Doc (+3 metadata)
    706.  List.groupBy.tests.groups                         : [Result] (+4 metadata)
    707.  List.groupConsecutive                             : [a]
                                                            -> [Nonempty
                                                              a] (+4 metadata)
    708.  List.groupConsecutive.doc                         : Doc (+3 metadata)
    709.  List.groupConsecutive.tests.base                  : [Result] (+4 metadata)
    710.  List.groupMap                                     : (a
                                                            ->{e} k)
                                                            -> (a
                                                            ->{e} v)
                                                            -> [a]
                                                            ->{e} Map
                                                              k
                                                              (Nonempty
                                                                v) (+4 metadata)
    711.  List.groupMap.doc                                 : Doc (+3 metadata)
    712.  List.groupMap.tests.groups                        : [Result] (+4 metadata)
    713.  List.groupMapReduce                               : (a
                                                            ->{e} k)
                                                            -> (a
                                                            ->{e} v)
                                                            -> (v
                                                            ->{e} v
                                                            ->{e} v)
                                                            -> [a]
                                                            ->{e} Map
                                                              k
                                                              v (+4 metadata)
    714.  List.groupMapReduce.doc                           : Doc (+3 metadata)
    715.  List.groupMapReduce.tests.groups                  : [Result] (+4 metadata)
    716.  List.groupSublistsBy                              : (a
                                                            ->{e} a
                                                            ->{e} Boolean)
                                                            -> [a]
                                                            ->{e} [Nonempty
                                                              a] (+5 metadata)
    717.  List.groupSublistsBy.doc                          : Doc (+4 metadata)
    718.  List.halve                                        : [a]
                                                            -> ( [a],
                                                              [a])
    719.  List.head                                         : [a]
                                                            -> Optional
                                                              a (+3 metadata)
    720.  List.head.doc                                     : Doc (+2 metadata)
    721.  List.head.examples.evaluated.elems                : Optional
                                                              Nat (+2 metadata)
    722.  List.head.examples.evaluated.empty                : Optional
                                                              a (+2 metadata)
    723.  List.head.examples.evaluated.single               : Optional
                                                              Nat (+2 metadata)
    724.  List.head.test                                    : [Result] (+4 metadata)
    725.  List.indexed                                      : [a]
                                                            -> [( a,
                                                              Nat)]
    726.  List.init                                         : [a]
                                                            -> Optional
                                                              [a] (+4 metadata)
    727.  List.initialize                                   : Nat
                                                            -> (Nat
                                                            ->{e} a)
                                                            ->{e} [a] (+4 metadata)
    728.  List.initialize.doc                               : Doc (+3 metadata)
    729.  List.initialize.examples.ex1                      : [Nat] (+3 metadata)
    730.  List.initialize.tests.tests.ex1                   : [Result] (+4 metadata)
    731.  List.inits                                        : [a]
                                                            -> [[a]] (+2 metadata)
    732.  List.insert                                       : Nat
                                                            -> a
                                                            -> [a]
                                                            -> [a]
    733.  List.intercalate                                  : [a]
                                                            -> [[a]]
                                                            -> [a] (+5 metadata)
    734.  List.intercalate.doc                              : Doc (+5 metadata)
    735.  List.intercalate.tests.empty                      : [Result] (+4 metadata)
    736.  List.intercalate.tests.empty1                     : [Result] (+4 metadata)
    737.  List.intercalate.tests.empty2                     : [Result] (+4 metadata)
    738.  List.intercalate.tests.simple                     : [Result] (+4 metadata)
    739.  List.intercalate.tests.size                       : [Result] (+6 metadata)
    740.  List.intersperse                                  : a
                                                            -> [a]
                                                            -> [a] (+3 metadata)
    741.  List.intersperse.doc                              : Doc (+2 metadata)
    742.  List.intersperse.tests.base                       : [Result] (+4 metadata)
    743.  List.intersperse.tests.empty                      : [Result] (+4 metadata)
    744.  List.isInfixOf                                    : [a]
                                                            -> [a]
                                                            -> Boolean (+3 metadata)
    745.  List.isInfixOf.doc                                : Doc (+2 metadata)
    746.  List.isInfixOf.tests.prop1                        : [Result] (+6 metadata)
    747.  List.isPrefixOf                                   : [a]
                                                            -> [a]
                                                            -> Boolean (+3 metadata)
    748.  List.isPrefixOf.doc                               : Doc (+2 metadata)
    749.  List.isPrefixOf.tests.prop1                       : [Result] (+6 metadata)
    750.  List.isPrefixOf.tests.prop2                       : [Result] (+6 metadata)
    751.  List.isSuffixOf                                   : [a]
                                                            -> [a]
                                                            -> Boolean (+3 metadata)
    752.  List.isSuffixOf.doc                               : Doc (+2 metadata)
    753.  List.isSuffixOf.tests.prop1                       : [Result] (+6 metadata)
    754.  List.isSuffixOf.tests.prop2                       : [Result] (+6 metadata)
    755.  List.join                                         : [[a]]
                                                            -> [a] (+1 metadata)
    756.  List.join.doc                                     : Doc (+4 metadata)
    757.  List.join.tests.associative                       : [Result] (+4 metadata)
    758.  List.join.tests.homomorphism                      : [Result] (+4 metadata)
    759.  List.join.tests.unit                              : [Result] (+4 metadata)
    760.  List.last                                         : [a]
                                                            -> Optional
                                                              a (+2 metadata)
    761.  List.last.doc                                     : Doc (+1 metadata)
    762.  ┌ List.last.examples.elems                        : [Nat] (+1 metadata)
    763.  └ Search.anyIndexOf.examples.input.sorted         : [Nat]
    764.  List.last.examples.evaluated.elems                : Optional
                                                              Nat (+1 metadata)
    765.  List.last.examples.evaluated.empty                : Optional
                                                              a (+1 metadata)
    766.  List.last.examples.evaluated.single               : Optional
                                                              Nat (+1 metadata)
    767.  List.last.examples.single                         : [Nat] (+1 metadata)
    768.  List.last.tests.elems                             : [Result] (+3 metadata)
    769.  List.last.tests.empty                             : [Result] (+3 metadata)
    770.  List.last.tests.single                            : [Result] (+3 metadata)
    771.  List.lefts                                        : [Either
                                                              a
                                                              b]
                                                            -> [a] (+3 metadata)
    772.  List.lefts.doc                                    : Doc (+3 metadata)
    773.  List.lefts.tests.ex1                              : [Result] (+4 metadata)
    774.  List.map                                          : (a
                                                            ->{𝕖} b)
                                                            -> [a]
                                                            ->{𝕖} [b]
    775.  List.mapIndexed                                   : (Nat
                                                            ->{𝕖} a
                                                            ->{𝕖} b)
                                                            -> [a]
                                                            ->{𝕖} [b] (+3 metadata)
    776.  List.mapIndexed.doc                               : Doc (+3 metadata)
    777.  List.mapIndexed.tests.ex1                         : [Result] (+4 metadata)
    778.  List.mapIndexed.tests.ex2                         : [Result] (+4 metadata)
    779.  List.maximum                                      : [a]
                                                            -> Optional
                                                              a (+3 metadata)
    780.  List.maximum.doc                                  : Doc (+2 metadata)
    781.  List.maximum.tests.base                           : [Result] (+4 metadata)
    782.  List.maximum.tests.empty                          : [Result] (+4 metadata)
    783.  List.minimum                                      : [a]
                                                            -> Optional
                                                              a (+3 metadata)
    784.  List.minimum.doc                                  : Doc (+2 metadata)
    785.  List.minimum.tests.base                           : [Result] (+4 metadata)
    786.  List.nonEmptySubsequences                         : [a]
                                                            -> [Nonempty
                                                              a] (+5 metadata)
    787.  List.nonEmptySubsequences.doc                     : Doc (+4 metadata)
    788.  List.nonEmptySubsequences.tests.base              : [Result] (+6 metadata)
    789.  List.none                                         : (i
                                                            ->{e} Boolean)
                                                            -> [i]
                                                            ->{e} Boolean (+4 metadata)
    790.  List.none.doc                                     : Doc (+2 metadata)
    791.  List.nonempty                                     : [a]
                                                            -> Optional
                                                              (Nonempty
                                                                a) (+3 metadata)
    792.  List.nonempty.doc                                 : Doc (+2 metadata)
    793.  List.partitionEithers                             : [Either
                                                              a
                                                              b]
                                                            -> ( [a],
                                                              [b]) (+3 metadata)
    794.  List.partitionEithers.doc                         : Doc (+3 metadata)
    795.  List.partitionEithers.tests.ex1                   : [Result] (+4 metadata)
    796.  List.powerslice                                   : [a]
                                                            -> [[a]] (+4 metadata)
    797.  List.powerslice.doc                               : Doc (+3 metadata)
    798.  List.powerslice.examples.ex1                      : [[Nat]] (+2 metadata)
    799.  List.powerslice.examples.ex2                      : [[a]] (+2 metadata)
    800.  List.powerslice.tests.prop1                       : [Result] (+6 metadata)
    801.  List.powerslice.tests.test1                       : [Result] (+4 metadata)
    802.  List.range                                        : Nat
                                                            -> Nat
                                                            -> [Nat] (+1 metadata)
    803.  List.range.doc                                    : Doc (+1 metadata)
    804.  List.range.examples.invalid.descFromNeg           : [Int] (+1 metadata)
    805.  List.range.examples.invalid.descFromPos           : [Int] (+1 metadata)
    806.  List.range.examples.valid.ascFromNeg              : [Int] (+1 metadata)
    807.  List.range.examples.valid.ascFromNeg2             : [Int] (+1 metadata)
    808.  List.range.examples.valid.ascFromPos              : [Int] (+1 metadata)
    809.  List.range.tests.invalid.descFromNeg              : [Result] (+3 metadata)
    810.  List.range.tests.invalid.descFromPos              : [Result] (+3 metadata)
    811.  List.range.tests.valid.ascFromNeg                 : [Result] (+3 metadata)
    812.  List.range.tests.valid.ascFromNeg2                : [Result] (+3 metadata)
    813.  List.range.tests.valid.ascFromPos                 : [Result] (+3 metadata)
    814.  List.replace                                      : Nat
                                                            -> a
                                                            -> [a]
                                                            -> [a]
    815.  List.replicate                                    : Nat
                                                            -> '{e} a
                                                            ->{e} [a] (+3 metadata)
    816.  List.replicate.doc                                : Doc (+2 metadata)
    817.  List.replicate.test                               : [Result] (+4 metadata)
    818.  List.replicate.test.doc                           : Doc (+2 metadata)
    819.  List.reverse                                      : [a]
                                                            -> [a]
    820.  List.rights                                       : [Either
                                                              a
                                                              b]
                                                            -> [b] (+3 metadata)
    821.  List.rights.doc                                   : Doc (+3 metadata)
    822.  List.rights.tests.ex1                             : [Result] (+4 metadata)
    823.  List.scanl                                        : (b
                                                            ->{e} a
                                                            ->{e} b)
                                                            -> b
                                                            -> [a]
                                                            ->{e} Nonempty
                                                              b (+3 metadata)
    824.  List.scanl.doc                                    : Doc (+2 metadata)
    825.  List.scanl.examples.asDoc                         : Doc (+2 metadata)
    826.  List.scanl.examples.ex1                           : Nonempty
                                                              Nat (+2 metadata)
    827.  List.scanl.examples.ex2                           : Nonempty
                                                              Nat (+2 metadata)
    828.  List.scanl.examples.ex3                           : Nonempty
                                                              Nat (+2 metadata)
    829.  List.scanl.examples.ex4                           : Nonempty
                                                              Nat (+2 metadata)
    830.  List.scanl.examples.ex5                           : Nonempty
                                                              Nat (+2 metadata)
    831.  List.scanl.test                                   : [Result] (+4 metadata)
    832.  List.scanr                                        : (a
                                                            ->{e} b
                                                            ->{e} b)
                                                            -> b
                                                            -> [a]
                                                            ->{e} Nonempty
                                                              b (+3 metadata)
    833.  List.scanr.doc                                    : Doc (+2 metadata)
    834.  List.scanr.examples.asDoc                         : Doc (+2 metadata)
    835.  List.scanr.examples.ex1                           : Nonempty
                                                              Nat (+2 metadata)
    836.  List.scanr.examples.ex2                           : Nonempty
                                                              Nat (+2 metadata)
    837.  List.scanr.examples.ex3                           : Nonempty
                                                              Nat (+2 metadata)
    838.  List.scanr.examples.ex4                           : Nonempty
                                                              Boolean (+2 metadata)
    839.  List.scanr.examples.ex5                           : Nonempty
                                                              Nat (+2 metadata)
    840.  List.scanr.test                                   : [Result] (+4 metadata)
    841.  List.singleton                                    : a
                                                            -> [a] (+3 metadata)
    842.  List.singleton.doc                                : Doc (+2 metadata)
    843.  List.size                                         : [a]
                                                            -> Nat
    844.  List.slice                                        : Nat
                                                            -> Nat
                                                            -> [a]
                                                            -> [a]
    845.  List.somes                                        : [Optional
                                                              a]
                                                            -> [a] (+3 metadata)
    846.  List.somes.doc                                    : Doc (+3 metadata)
    847.  List.somes.tests.ex1                              : [Result] (+4 metadata)
    848.  List.sortBy                                       : (a
                                                            ->{𝕖} b)
                                                            -> [a]
                                                            ->{𝕖} [a]
    849.  List.span                                         : (a
                                                            ->{e} Boolean)
                                                            -> [a]
                                                            ->{e} ( [a],
                                                              [a]) (+6 metadata)
    850.  List.span.doc                                     : Doc (+5 metadata)
    851.  List.span.tests.alle                              : [Result] (+4 metadata)
    852.  List.span.tests.allf                              : [Result] (+4 metadata)
    853.  List.span.tests.middle                            : [Result] (+4 metadata)
    854.  List.split                                        : (a
                                                            ->{e} Boolean)
                                                            -> [a]
                                                            ->{e} [[a]] (+5 metadata)
    855.  List.split.doc                                    : Doc (+4 metadata)
    856.  List.split.tests.base                             : [Result] (+4 metadata)
    857.  List.split.tests.double                           : [Result] (+4 metadata)
    858.  List.split.tests.empty                            : [Result] (+4 metadata)
    859.  List.splitAt                                      : Nat
                                                            -> [a]
                                                            -> ( [a],
                                                              [a]) (+5 metadata)
    860.  List.splitAt.doc                                  : Doc (+4 metadata)
    861.  List.splitAt.tests.base                           : [Result] (+6 metadata)
    862.  List.splitAt.tests.ob                             : [Result] (+6 metadata)
    863.  List.splitAt.tests.zero                           : [Result] (+6 metadata)
    864.  List.stripPrefix                                  : [a]
                                                            -> [a]
                                                            -> Optional
                                                              [a] (+5 metadata)
    865.  List.stripPrefix.doc                              : Doc (+4 metadata)
    866.  List.stripPrefix.tests.all                        : [Result] (+4 metadata)
    867.  List.stripPrefix.tests.base                       : [Result] (+4 metadata)
    868.  List.stripPrefix.tests.none                       : [Result] (+4 metadata)
    869.  List.subsequences                                 : [a]
                                                            -> [[a]] (+5 metadata)
    870.  List.subsequences.doc                             : Doc (+4 metadata)
    871.  List.subsequences.tests.base                      : [Result] (+4 metadata)
    872.  List.tail                                         : [a]
                                                            -> Optional
                                                              [a] (+3 metadata)
    873.  List.tail.doc                                     : Doc (+2 metadata)
    874.  List.tail.tests.prop1                             : [Result] (+6 metadata)
    875.  List.tail.tests.test1                             : [Result] (+4 metadata)
    876.  List.tail.tests.test2                             : [Result] (+4 metadata)
    877.  List.tails                                        : [a]
                                                            -> [[a]] (+2 metadata)
    878.  List.take                                         : Nat
                                                            -> [a]
                                                            -> [a]
    879.  List.takeWhile                                    : (a
                                                            ->{e} Boolean)
                                                            -> [a]
                                                            ->{e} [a] (+5 metadata)
    880.  List.takeWhile.doc                                : Doc (+3 metadata)
    881.  List.takeWhile.tests.all                          : [Result] (+4 metadata)
    882.  List.takeWhile.tests.middle                       : [Result] (+4 metadata)
    883.  List.takeWhile.tests.none                         : [Result] (+4 metadata)
    884.  List.uncons                                       : [a]
                                                            -> Optional
                                                              ( a,
                                                                [a])
    885.  List.unfold                                       : s
                                                            -> (s
                                                            ->{𝕖} Optional
                                                              ( a,
                                                                s))
                                                            ->{𝕖} [a]
    886.  List.unsafeAt                                     : Nat
                                                            -> [a]
                                                            -> a
    887.  List.unsnoc                                       : [a]
                                                            -> Optional
                                                              ( [a],
                                                                a)
    888.  List.zip                                          : [a]
                                                            -> [b]
                                                            -> [( a,
                                                              b)]
    889.  List.zipWith                                      : (a
                                                            ->{𝕖} b
                                                            ->{𝕖} c)
                                                            -> [a]
                                                            -> [b]
                                                            ->{𝕖} [c] (+3 metadata)
    890.  List.zipWith.doc                                  : Doc (+3 metadata)
    891.  List.zipWith.tests.edge1                          : [Result] (+4 metadata)
    892.  List.zipWith.tests.edge2                          : [Result] (+4 metadata)
    893.  List.zipWith.tests.edge3                          : [Result] (+6 metadata)
    894.  List.zipWith.tests.edge4                          : [Result] (+6 metadata)
    895.  List.zipWith.tests.ex1                            : [Result] (+4 metadata)
    896.  List.zipWith.tests.ex2                            : [Result] (+4 metadata)
    897.  List.zipWith.tests.zipWithRange                   : [Result] (+6 metadata)
    898.  ┌ Map.==                                          : Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Boolean (+5 metadata)
    899.  └ Map.equals                                      : Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Boolean (+5 metadata)
    900.  Map.==.doc                                        : Doc (+2 metadata)
    901.  Map.adjust                                        : (v
                                                            ->{e} v)
                                                            -> k
                                                            -> Map
                                                              k
                                                              v
                                                            ->{e} Map
                                                              k
                                                              v (+5 metadata)
    902.  Map.adjust.doc                                    : Doc (+5 metadata)
    903.  Map.adjust.tests.adjusts                          : [Result] (+6 metadata)
    904.  Map.adjust.tests.alterMap                         : [Result] (+6 metadata)
    905.  Map.adjustWithKey                                 : (k
                                                            ->{e} v
                                                            ->{e} v)
                                                            -> k
                                                            -> Map
                                                              k
                                                              v
                                                            ->{e} Map
                                                              k
                                                              v (+5 metadata)
    906.  Map.adjustWithKey.doc                             : Doc (+5 metadata)
    907.  Map.adjustWithKey.tests.adjusts                   : [Result] (+6 metadata)
    908.  Map.alter                                         : (Optional
                                                              v
                                                            ->{e} Optional
                                                              v)
                                                            -> k
                                                            -> Map
                                                              k
                                                              v
                                                            ->{e} Map
                                                              k
                                                              v (+6 metadata)
    909.  Map.alter.doc                                     : Doc (+5 metadata)
    910.  Map.alter.tests.functor                           : [Result] (+6 metadata)
    911.  Map.alter.tests.homomorphism                      : [Result] (+6 metadata)
    912.  Map.alter.tests.naturality                        : [Result] (+6 metadata)
    913.  Map.breakOffMax                                   : Map
                                                              k
                                                              v
                                                            -> Optional
                                                              ( ( k,
                                                                v),
                                                                Map
                                                                k
                                                                v) (+6 metadata)
    914.  Map.breakOffMax.doc                               : Doc (+5 metadata)
    915.  Map.breakOffMax.tests.isMax                       : [Result] (+6 metadata)
    916.  Map.breakOffMin                                   : Map
                                                              k
                                                              v
                                                            -> Optional
                                                              ( ( k,
                                                                v),
                                                                Map
                                                                k
                                                                v) (+6 metadata)
    917.  Map.breakOffMin.doc                               : Doc (+5 metadata)
    918.  Map.breakOffMin.tests.isMin                       : [Result] (+5 metadata)
    919.  Map.contains                                      : k
                                                            -> Map
                                                              k
                                                              v
                                                            -> Boolean (+5 metadata)
    920.  Map.contains.doc                                  : Doc (+4 metadata)
    921.  Map.contains.tests.delete                         : [Result] (+6 metadata)
    922.  Map.contains.tests.put                            : [Result] (+6 metadata)
    923.  Map.delete                                        : k
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v (+6 metadata)
    924.  Map.delete.doc                                    : Doc (+5 metadata)
    925.  Map.delete.tests.deletes                          : [Result] (+6 metadata)
    926.  Map.difference                                    : Map
                                                              k
                                                              a
                                                            -> Map
                                                              k
                                                              b
                                                            -> Map
                                                              k
                                                              a (+6 metadata)
    927.  Map.difference.doc                                : Doc (+5 metadata)
    928.  Map.difference.tests.prop                         : [Result] (+6 metadata)
    929.  Map.doc                                           : Doc (+5 metadata)
    930.  Map.empty                                         : Map
                                                              k
                                                              v (+5 metadata)
    931.  Map.empty.doc                                     : Doc (+4 metadata)
    932.  Map.equals.doc                                    : Doc (+4 metadata)
    933.  Map.equals.tests.reflexive                        : [Result] (+6 metadata)
    934.  Map.equals.tests.symmetric                        : [Result] (+6 metadata)
    935.  Map.equals.tests.transitive                       : [Result] (+6 metadata)
    936.  Map.foldLeft                                      : (a
                                                            ->{e} b
                                                            ->{e} a)
                                                            -> a
                                                            -> Map
                                                              k
                                                              b
                                                            ->{e} a (+5 metadata)
    937.  Map.foldLeft.doc                                  : Doc (+5 metadata)
    938.  Map.foldLeft.tests.onElements                     : [Result] (+6 metadata)
    939.  Map.foldLeftWithKey                               : (a
                                                            ->{e} k
                                                            ->{e} b
                                                            ->{e} a)
                                                            -> a
                                                            -> Map
                                                              k
                                                              b
                                                            ->{e} a (+5 metadata)
    940.  Map.foldLeftWithKey.doc                           : Doc (+5 metadata)
    941.  Map.foldLeftWithKey.tests.onAssoc                 : [Result] (+6 metadata)
    942.  Map.foldRight                                     : (a
                                                            ->{e} b
                                                            ->{e} b)
                                                            -> b
                                                            -> Map
                                                              k
                                                              a
                                                            ->{e} b (+5 metadata)
    943.  Map.foldRight.doc                                 : Doc (+5 metadata)
    944.  Map.foldRight.tests.onElements                    : [Result] (+6 metadata)
    945.  Map.foldRightWithKey                              : (k
                                                            ->{e} a
                                                            ->{e} b
                                                            ->{e} b)
                                                            -> b
                                                            -> Map
                                                              k
                                                              a
                                                            ->{e} b (+5 metadata)
    946.  Map.foldRightWithKey.doc                          : Doc (+5 metadata)
    947.  Map.foldRightWithKey.tests.onElements             : [Result] (+6 metadata)
    948.  Map.fromList                                      : [( k,
                                                              v)]
                                                            -> Map
                                                              k
                                                              v (+6 metadata)
    949.  Map.fromList.doc                                  : Doc (+5 metadata)
    950.  Map.fromList.tests.roundtrip                      : [Result] (+6 metadata)
    951.  Map.fromListWith                                  : (v
                                                            ->{e} v
                                                            ->{e} v)
                                                            -> [( k,
                                                              v)]
                                                            ->{e} Map
                                                              k
                                                              v (+5 metadata)
    952.  Map.fromListWith.doc                              : Doc (+5 metadata)
    953.  Map.fromListWith.tests.roundtrip                  : [Result] (+6 metadata)
    954.  Map.fromListWithKey                               : (k
                                                            ->{e} v
                                                            ->{e} v
                                                            ->{e} v)
                                                            -> [( k,
                                                              v)]
                                                            ->{e} Map
                                                              k
                                                              v (+5 metadata)
    955.  Map.fromListWithKey.doc                           : Doc (+5 metadata)
    956.  Map.fromListWithKey.tests.roundtrip               : [Result] (+6 metadata)
    957.  ┌ Map.get                                         : k
                                                            -> Map
                                                              k
                                                              v
                                                            -> Optional
                                                              v (+5 metadata)
    958.  └ Map.lookup                                      : k
                                                            -> Map
                                                              k
                                                              v
                                                            -> Optional
                                                              v (+5 metadata)
    959.  Map.get.doc                                       : Doc (+4 metadata)
    960.  Map.get.tests.spec                                : [Result] (+6 metadata)
    961.  Map.getMax                                        : Map
                                                              k
                                                              v
                                                            -> Optional
                                                              ( k,
                                                                v) (+5 metadata)
    962.  Map.getMax.doc                                    : Doc (+4 metadata)
    963.  Map.getMax.tests.isMax                            : [Result] (+6 metadata)
    964.  Map.getMin                                        : Map
                                                              k
                                                              v
                                                            -> Optional
                                                              ( k,
                                                                v) (+5 metadata)
    965.  Map.getMin.doc                                    : Doc (+4 metadata)
    966.  Map.getMin.tests.isMin                            : [Result] (+6 metadata)
    967.  Map.getOrElse                                     : v
                                                            -> k
                                                            -> Map
                                                              k
                                                              v
                                                            -> v (+6 metadata)
    968.  Map.getOrElse.doc                                 : Doc (+5 metadata)
    969.  Map.getOrElse.tests.spec                          : [Result] (+6 metadata)
    970.  ┌ Map.insert                                      : k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v (+5 metadata)
    971.  └ Map.put                                         : k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v (+5 metadata)
    972.  Map.internal.balance                              : k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v (+4 metadata)
    973.  Map.internal.balanceL                             : k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v (+4 metadata)
    974.  Map.internal.balanceR                             : k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v (+4 metadata)
    975.  Map.internal.bin                                  : k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v (+4 metadata)
    976.  Map.internal.delta                                : Nat (+4 metadata)
    977.  Map.internal.glue                                 : Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v (+5 metadata)
    978.  Map.internal.link                                 : k
                                                            ->{g} v
                                                            ->{g} Map
                                                              k
                                                              v
                                                            ->{g} Map
                                                              k
                                                              v
                                                            ->{g} Map
                                                              k
                                                              v (+5 metadata)
    979.  Map.internal.link2                                : Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v (+5 metadata)
    980.  Map.internal.maxViewSure                          : k
                                                            ->{g} v
                                                            ->{g} Map
                                                              k
                                                              v
                                                            ->{g} Map
                                                              k
                                                              v
                                                            ->{g} MaxView
                                                              k
                                                              v (+5 metadata)
    981.  Map.internal.minViewSure                          : k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v
                                                            -> MinView
                                                              k
                                                              v (+5 metadata)
    982.  Map.internal.putMax                               : k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v (+5 metadata)
    983.  Map.internal.putMin                               : k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v (+5 metadata)
    984.  Map.internal.putWithKeyR                          : (k
                                                            ->{e} v
                                                            ->{e} v
                                                            ->{e} v)
                                                            -> k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            ->{e} Map
                                                              k
                                                              v (+5 metadata)
    985.  Map.internal.putWithR                             : (v
                                                            ->{e} v
                                                            ->{e} v)
                                                            -> k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            ->{e} Map
                                                              k
                                                              v (+5 metadata)
    986.  Map.internal.ratio                                : Nat (+4 metadata)
    987.  Map.internal.splitLookup                          : k
                                                            -> Map
                                                              k
                                                              v
                                                            -> ( Map
                                                              k
                                                              v,
                                                              Optional
                                                              v,
                                                              Map
                                                              k
                                                              v) (+5 metadata)
    988.  Map.intersect                                     : Map
                                                              k
                                                              a
                                                            -> Map
                                                              k
                                                              b
                                                            -> Map
                                                              k
                                                              a (+6 metadata)
    989.  Map.intersect.doc                                 : Doc (+5 metadata)
    990.  Map.intersect.tests.associative                   : [Result] (+6 metadata)
    991.  Map.intersect.tests.idempotent                    : [Result] (+6 metadata)
    992.  Map.intersect.tests.zero                          : [Result] (+6 metadata)
    993.  Map.intersectWith                                 : (a
                                                            ->{e} b
                                                            ->{e} c)
                                                            -> Map
                                                              k
                                                              a
                                                            -> Map
                                                              k
                                                              b
                                                            ->{e} Map
                                                              k
                                                              c (+6 metadata)
    994.  Map.intersectWith.doc                             : Doc (+5 metadata)
    995.  Map.intersectWith.tests.commutative               : [Result] (+6 metadata)
    996.  Map.intersectWith.tests.idempotent                : [Result] (+6 metadata)
    997.  Map.intersectWith.tests.zero                      : [Result] (+6 metadata)
    998.  Map.intersectWithKey                              : (k
                                                            ->{e} a
                                                            ->{e} b
                                                            ->{e} c)
                                                            -> Map
                                                              k
                                                              a
                                                            -> Map
                                                              k
                                                              b
                                                            ->{e} Map
                                                              k
                                                              c (+6 metadata)
    999.  Map.intersectWithKey.doc                          : Doc (+5 metadata)
    1000. Map.intersectWithKey.tests.commutative            : [Result] (+6 metadata)
    1001. Map.intersectWithKey.tests.idempotent             : [Result] (+6 metadata)
    1002. Map.intersectWithKey.tests.zero                   : [Result] (+6 metadata)
    1003. Map.isEmpty                                       : Map
                                                              k
                                                              v
                                                            -> Boolean (+5 metadata)
    1004. Map.isEmpty.doc                                   : Doc (+4 metadata)
    1005. Map.isEmpty.tests.spec                            : [Result] (+6 metadata)
    1006. Map.keys                                          : Map
                                                              k
                                                              a
                                                            -> [k] (+5 metadata)
    1007. Map.keys.doc                                      : Doc (+4 metadata)
    1008. Map.keys.tests.spec                               : [Result] (+6 metadata)
    1009. Map.map                                           : (a
                                                            ->{e} b)
                                                            -> Map
                                                              k
                                                              a
                                                            ->{e} Map
                                                              k
                                                              b (+5 metadata)
    1010. Map.map.doc                                       : Doc (+5 metadata)
    1011. Map.map.tests.functor                             : [Result] (+6 metadata)
    1012. Map.mapKeys                                       : (k1
                                                            ->{g} k2)
                                                            -> Map
                                                              k1
                                                              v
                                                            ->{g} Map
                                                              k2
                                                              v (+6 metadata)
    1013. Map.mapKeys.doc                                   : Doc (+5 metadata)
    1014. Map.mapKeys.tests.functorish                      : [Result] (+6 metadata)
    1015. Map.mapKeys.tests.retainGreatest                  : [Result] (+6 metadata)
    1016. Map.mapKeysWith                                   : (v
                                                            ->{g} v
                                                            ->{g} v)
                                                            -> (k1
                                                            ->{g} k2)
                                                            -> Map
                                                              k1
                                                              v
                                                            ->{g} Map
                                                              k2
                                                              v (+5 metadata)
    1017. Map.mapKeysWith.doc                               : Doc (+5 metadata)
    1018. Map.mapKeysWith.tests.functorish                  : [Result] (+6 metadata)
    1019. Map.mapKeysWith.tests.greatestFirst               : [Result] (+6 metadata)
    1020. Map.mapWithKey                                    : (k
                                                            ->{e} a
                                                            ->{e} b)
                                                            -> Map
                                                              k
                                                              a
                                                            ->{e} Map
                                                              k
                                                              b (+5 metadata)
    1021. Map.mapWithKey.doc                                : Doc (+5 metadata)
    1022. Map.mapWithKey.tests.functorish                   : [Result] (+6 metadata)
    1023. Map.mapWithKey.tests.worksLikeList                : [Result] (+6 metadata)
    1024. Map.put.doc                                       : Doc (+4 metadata)
    1025. Map.putGetWithKey                                 : (k
                                                            ->{e} v
                                                            ->{e} v
                                                            ->{e} v)
                                                            -> k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            ->{e} ( Optional
                                                              v,
                                                              Map
                                                              k
                                                              v) (+6 metadata)
    1026. Map.putGetWithKey.doc                             : Doc (+4 metadata)
    1027. Map.putGetWithKey.tests.putsAndGets               : [Result] (+6 metadata)
    1028. Map.putWith                                       : (v
                                                            ->{e} v
                                                            ->{e} v)
                                                            -> k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            ->{e} Map
                                                              k
                                                              v (+6 metadata)
    1029. Map.putWith.doc                                   : Doc (+5 metadata)
    1030. Map.putWith.tests.puts                            : [Result] (+6 metadata)
    1031. Map.putWithKey                                    : (k
                                                            ->{e} v
                                                            ->{e} v
                                                            ->{e} v)
                                                            -> k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v
                                                            ->{e} Map
                                                              k
                                                              v (+6 metadata)
    1032. Map.putWithKey.doc                                : Doc (+5 metadata)
    1033. Map.singleton                                     : k
                                                            -> v
                                                            -> Map
                                                              k
                                                              v (+5 metadata)
    1034. Map.singleton.doc                                 : Doc (+4 metadata)
    1035. Map.singleton.tests.roundtrip                     : [Result] (+6 metadata)
    1036. Map.size                                          : Map
                                                              k
                                                              v
                                                            -> Nat (+5 metadata)
    1037. Map.size.doc                                      : Doc (+4 metadata)
    1038. Map.size.tests.numberOfKeys                       : [Result] (+6 metadata)
    1039. Map.split                                         : k
                                                            -> Map
                                                              k
                                                              a
                                                            -> ( Map
                                                              k
                                                              a,
                                                              Map
                                                              k
                                                              a) (+6 metadata)
    1040. Map.split.doc                                     : Doc (+5 metadata)
    1041. Map.split.tests.splits                            : [Result] (+6 metadata)
    1042. ┌ Map.tests.mapOf                                 : '{Gen} k
                                                            -> '{Gen} v
                                                            -> '{Gen} Map
                                                              k
                                                              v (+6 metadata)
    1043. └ test.gen.mapOf                                  : '{Gen} k
                                                            -> '{Gen} v
                                                            -> '{Gen} Map
                                                              k
                                                              v (+4 metadata)
    1044. Map.tests.mapOf.doc                               : Doc (+4 metadata)
    1045. Map.toList                                        : Map
                                                              k
                                                              v
                                                            -> [( k,
                                                              v)] (+5 metadata)
    1046. Map.toList.doc                                    : Doc (+4 metadata)
    1047. Map.toList.tests.roundtrip                        : [Result] (+6 metadata)
    1048. Map.union                                         : Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v (+6 metadata)
    1049. Map.union.doc                                     : Doc (+5 metadata)
    1050. Map.union.tests.associative                       : [Result] (+6 metadata)
    1051. Map.union.tests.idempotent                        : [Result] (+6 metadata)
    1052. Map.union.tests.unit                              : [Result] (+6 metadata)
    1053. Map.unionWith                                     : (v
                                                            ->{e} v
                                                            ->{e} v)
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v
                                                            ->{e} Map
                                                              k
                                                              v (+6 metadata)
    1054. Map.unionWith.doc                                 : Doc (+5 metadata)
    1055. Map.unionWith.tests.commutative                   : [Result] (+6 metadata)
    1056. Map.unionWith.tests.idempotent                    : [Result] (+6 metadata)
    1057. Map.unionWith.tests.unit                          : [Result] (+6 metadata)
    1058. Map.unionWithKey                                  : (k
                                                            ->{e} v
                                                            ->{e} v
                                                            ->{e} v)
                                                            -> Map
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              v
                                                            ->{e} Map
                                                              k
                                                              v (+6 metadata)
    1059. Map.unionWithKey.doc                              : Doc (+5 metadata)
    1060. Map.unionWithKey.tests.commutative                : [Result] (+6 metadata)
    1061. Map.unionWithKey.tests.idempotent                 : [Result] (+6 metadata)
    1062. Map.unionWithKey.tests.unit                       : [Result] (+6 metadata)
    1063. Map.update                                        : (v
                                                            ->{e} Optional
                                                              v)
                                                            -> k
                                                            -> Map
                                                              k
                                                              v
                                                            ->{e} Map
                                                              k
                                                              v (+6 metadata)
    1064. Map.update.doc                                    : Doc (+5 metadata)
    1065. Map.update.tests.updates                          : [Result] (+6 metadata)
    1066. Map.updateWithKey                                 : (k
                                                            ->{e} v
                                                            ->{e} Optional
                                                              v)
                                                            -> k
                                                            -> Map
                                                              k
                                                              v
                                                            ->{e} Map
                                                              k
                                                              v (+6 metadata)
    1067. Map.updateWithKey.doc                             : Doc (+5 metadata)
    1068. Map.updateWithKey.tests.updates                   : [Result] (+6 metadata)
    1069. Map.values                                        : Map
                                                              k
                                                              v
                                                            -> [v] (+5 metadata)
    1070. Map.values.doc                                    : Doc (+4 metadata)
    1071. Map.values.tests.roundtrip                        : [Result] (+6 metadata)
    1072. Multimap.insert                                   : k
                                                            -> v
                                                            -> Map
                                                              k
                                                              [v]
                                                            -> Map
                                                              k
                                                              [v] (+1 metadata)
    1073. Multimap.lookup                                   : k
                                                            -> Map
                                                              k
                                                              [elem]
                                                            -> [elem] (+1 metadata)
    1074. Nat.*                                             : Nat
                                                            -> Nat
                                                            -> Nat
    1075. Nat.+                                             : Nat
                                                            -> Nat
                                                            -> Nat
    1076. Nat.-                                             : Nat
                                                            -> Nat
                                                            -> Int
    1077. Nat./                                             : Nat
                                                            -> Nat
                                                            -> Nat
    1078. Nat.and                                           : Nat
                                                            -> Nat
                                                            -> Nat
    1079. Nat.choose                                        : Nat
                                                            -> Nat
                                                            -> Nat (+3 metadata)
    1080. Nat.choose.doc                                    : Doc (+2 metadata)
    1081. Nat.choose.tests.test1                            : [Result] (+4 metadata)
    1082. Nat.complement                                    : Nat
                                                            -> Nat
    1083. Nat.decrement                                     : Nat
                                                            -> Nat (+3 metadata)
    1084. Nat.decrement.doc                                 : Doc (+2 metadata)
    1085. Nat.decrement.test                                : [Result] (+4 metadata)
    1086. Nat.drop                                          : Nat
                                                            -> Nat
                                                            -> Nat
    1087. Nat.eq                                            : Nat
                                                            -> Nat
                                                            -> Boolean
    1088. Nat.factorial                                     : Nat
                                                            -> Nat (+3 metadata)
    1089. Nat.factorial.doc                                 : Doc (+2 metadata)
    1090. Nat.factorial.tests.test1                         : [Result] (+4 metadata)
    1091. Nat.fromText                                      : Text
                                                            -> Optional
                                                              Nat
    1092. Nat.gcd                                           : Nat
                                                            -> Nat
                                                            -> Nat (+3 metadata)
    1093. Nat.gcd.doc                                       : Doc (+2 metadata)
    1094. Nat.gcd.tests.commonDivisor                       : [Result] (+3 metadata)
    1095. Nat.gcd.tests.multipleOfAnyCD                     : [Result] (+3 metadata)
    1096. Nat.gt                                            : Nat
                                                            -> Nat
                                                            -> Boolean
    1097. Nat.gteq                                          : Nat
                                                            -> Nat
                                                            -> Boolean
    1098. Nat.hammingWeight                                 : Nat
                                                            -> Nat (+3 metadata)
    1099. Nat.hammingWeight.doc                             : Doc (+2 metadata)
    1100. Nat.hammingWeight.test                            : [Result] (+4 metadata)
    1101. Nat.inRange                                       : Nat
                                                            -> Nat
                                                            -> Nat
                                                            -> Boolean (+3 metadata)
    1102. Nat.inRange.doc                                   : Doc (+2 metadata)
    1103. Nat.inRange.test                                  : [Result] (+4 metadata)
    1104. Nat.increment                                     : Nat
                                                            -> Nat
    1105. Nat.isEven                                        : Nat
                                                            -> Boolean
    1106. Nat.isOdd                                         : Nat
                                                            -> Boolean
    1107. Nat.leadingZeros                                  : Nat
                                                            -> Nat
    1108. Nat.lt                                            : Nat
                                                            -> Nat
                                                            -> Boolean
    1109. Nat.lteq                                          : Nat
                                                            -> Nat
                                                            -> Boolean
    1110. Nat.maxNat                                        : Nat
    1111. Nat.mod                                           : Nat
                                                            -> Nat
                                                            -> Nat
    1112. Nat.msb                                           : Nat
                                                            -> Optional
                                                              Nat (+3 metadata)
    1113. Nat.msb.doc                                       : Doc (+2 metadata)
    1114. Nat.msb.test                                      : [Result] (+4 metadata)
    1115. Nat.or                                            : Nat
                                                            -> Nat
                                                            -> Nat
    1116. Nat.pow                                           : Nat
                                                            -> Nat
                                                            -> Nat
    1117. Nat.shiftLeft                                     : Nat
                                                            -> Nat
                                                            -> Nat
    1118. Nat.shiftRight                                    : Nat
                                                            -> Nat
                                                            -> Nat
    1119. Nat.sub                                           : Nat
                                                            -> Nat
                                                            -> Int
    1120. Nat.toFloat                                       : Nat
                                                            -> Float
    1121. Nat.toInt                                         : Nat
                                                            -> Int
    1122. Nat.toText                                        : Nat
                                                            -> Text
    1123. Nat.trailingZeros                                 : Nat
                                                            -> Nat
    1124. Nat.xor                                           : Nat
                                                            -> Nat
                                                            -> Nat
    1125. Optional.flatMap                                  : (a
                                                            ->{𝕖} Optional
                                                              b)
                                                            -> Optional
                                                              a
                                                            ->{𝕖} Optional
                                                              b
    1126. Optional.isNone                                   : Optional
                                                              a
                                                            -> Boolean (+3 metadata)
    1127. Optional.isNone.doc                               : Doc (+3 metadata)
    1128. Optional.isSome                                   : Optional
                                                              a
                                                            -> Boolean (+3 metadata)
    1129. Optional.isSome.doc                               : Doc (+2 metadata)
    1130. Optional.map                                      : (a
                                                            ->{𝕖} b)
                                                            -> Optional
                                                              a
                                                            ->{𝕖} Optional
                                                              b
    1131. Optional.map2                                     : (a
                                                            ->{𝕖} b
                                                            ->{𝕖} c)
                                                            -> Optional
                                                              a
                                                            -> Optional
                                                              b
                                                            ->{𝕖} Optional
                                                              c
    1132. Optional.orDefault                                : a
                                                            -> Optional
                                                              a
                                                            -> a
    1133. Optional.orElse                                   : Optional
                                                              a
                                                            -> Optional
                                                              a
                                                            -> Optional
                                                              a
    1134. Optional.toAbort                                  : Optional
                                                              a
                                                            ->{Abort} a (+2 metadata)
    1135. Optional.toList                                   : Optional
                                                              a
                                                            -> [a] (+2 metadata)
    1136. Optional.toList.tests.roundtrip                   : [Result] (+4 metadata)
    1137. Ordering.andThen                                  : Ordering
                                                            -> Ordering
                                                            -> Ordering (+3 metadata)
    1138. Ordering.andThen.doc                              : Doc (+2 metadata)
    1139. Ordering.andThen.example.ex1                      : Ordering (+2 metadata)
    1140. Ordering.doc                                      : Doc (+2 metadata)
    1141. Search.anyIndexOf                                 : a
                                                            -> [a]
                                                            -> Optional
                                                              Nat (+1 metadata)
    1142. Search.anyIndexOf.doc                             : Doc (+2 metadata)
    1143. Search.anyIndexOf.evaluated.empty                 : Optional
                                                              Nat (+2 metadata)
    1144. Search.anyIndexOf.evaluated.lower                 : Optional
                                                              Nat (+2 metadata)
    1145. Search.anyIndexOf.evaluated.notSorted             : Optional
                                                              Nat (+2 metadata)
    1146. Search.anyIndexOf.evaluated.sorted                : Optional
                                                              Nat (+2 metadata)
    1147. Search.anyIndexOf.evaluated.upper                 : Optional
                                                              Nat (+2 metadata)
    1148. ┌ Search.anyIndexOf.examples.input.lower          : [Nat] (+2 metadata)
    1149. └ Search.anyIndexOf.examples.input.notSorted      : [Nat] (+2 metadata)
    1150. Search.anyIndexOf.examples.input.upper            : [Nat] (+2 metadata)
    1151. Search.anyIndexOf.tests.empty                     : [Result] (+4 metadata)
    1152. Search.anyIndexOf.tests.lower                     : [Result] (+4 metadata)
    1153. Search.anyIndexOf.tests.notSorted                 : [Result] (+4 metadata)
    1154. Search.anyIndexOf.tests.sorted                    : [Result] (+4 metadata)
    1155. Search.anyIndexOf.tests.upper                     : [Result] (+4 metadata)
    1156. Search.elem.doc                                   : Doc (+2 metadata)
    1157. Search.elem.tests.negative1                       : [Result] (+4 metadata)
    1158. Search.elem.tests.negative2                       : [Result] (+4 metadata)
    1159. Search.elem.tests.negative3                       : [Result] (+4 metadata)
    1160. Search.exact                                      : (Nat
                                                            ->{𝕖} Int)
                                                            -> Nat
                                                            -> Nat
                                                            ->{𝕖} Optional
                                                              Nat (+1 metadata)
    1161. Search.exact.doc                                  : Doc (+2 metadata)
    1162. Search.indexOf                                    : a
                                                            -> [a]
                                                            -> Optional
                                                              Nat (+3 metadata)
    1163. Search.indexOf.doc                                : Doc (+2 metadata)
    1164. Search.indexOf.tests.negative1                    : [Result] (+4 metadata)
    1165. Search.indexOf.tests.negative2                    : [Result] (+4 metadata)
    1166. Search.indexOf.tests.negative3                    : [Result] (+4 metadata)
    1167. Search.indexOf.tests.positive1                    : [Result] (+4 metadata)
    1168. Search.indexOf.tests.positive2                    : [Result] (+4 metadata)
    1169. Search.indexOf.tests.positive3                    : [Result] (+4 metadata)
    1170. Search.lub                                        : (Nat
                                                            ->{𝕖} Int)
                                                            -> Nat
                                                            -> Nat
                                                            ->{𝕖} Nat (+1 metadata)
    1171. Search.lub.doc                                    : Doc (+2 metadata)
    1172. Search.lubIndexOf                                 : a
                                                            -> [a]
                                                            -> Nat (+1 metadata)
    1173. Search.lubIndexOf'                                : a
                                                            -> Nat
                                                            -> [a]
                                                            -> Nat (+1 metadata)
    1174. Search.lubIndexOf'.doc                            : Doc (+2 metadata)
    1175. Search.lubIndexOf.doc                             : Doc (+2 metadata)
    1176. Search.lubIndexOf.evaluated.empty                 : Nat (+2 metadata)
    1177. Search.lubIndexOf.evaluated.notSorted             : Nat (+2 metadata)
    1178. Search.lubIndexOf.evaluated.sorted                : Nat (+2 metadata)
    1179. Search.lubIndexOf.tests.empty                     : [Result] (+4 metadata)
    1180. Search.lubIndexOf.tests.notSorted                 : [Result] (+4 metadata)
    1181. Search.lubIndexOf.tests.sorted                    : [Result] (+4 metadata)
    1182. Search.notElem                                    : a
                                                            -> [a]
                                                            -> Boolean (+3 metadata)
    1183. Search.notElem.doc                                : Doc (+2 metadata)
    1184. Set.all                                           : (a
                                                            ->{e} Boolean)
                                                            -> Set
                                                              a
                                                            ->{e} Boolean (+3 metadata)
    1185. Set.all.doc                                       : Doc (+3 metadata)
    1186. Set.any                                           : (a
                                                            ->{e} Boolean)
                                                            -> Set
                                                              a
                                                            ->{e} Boolean (+3 metadata)
    1187. Set.any.doc                                       : Doc (+3 metadata)
    1188. Set.contains                                      : k
                                                            -> Set
                                                              k
                                                            -> Boolean (+2 metadata)
    1189. Set.delete                                        : k
                                                            -> Set
                                                              k
                                                            -> Set
                                                              k (+4 metadata)
    1190. Set.delete.doc                                    : Doc (+2 metadata)
    1191. Set.delete.test                                   : [Result] (+4 metadata)
    1192. Set.empty                                         : Set
                                                              k (+2 metadata)
    1193. Set.equals                                        : Set
                                                              k
                                                            -> Set
                                                              k
                                                            -> Boolean (+2 metadata)
    1194. Set.flatMap                                       : (i
                                                            ->{g} Set
                                                              k)
                                                            -> Set
                                                              i
                                                            ->{g} Set
                                                              k (+4 metadata)
    1195. Set.flatMap.doc                                   : Doc (+2 metadata)
    1196. Set.flatMap.tests.associative                     : [Result] (+4 metadata)
    1197. Set.flatMap.tests.unit                            : [Result] (+4 metadata)
    1198. Set.flatten                                       : Set
                                                              (Set
                                                                k)
                                                            -> Set
                                                              k (+4 metadata)
    1199. Set.flatten.doc                                   : Doc (+2 metadata)
    1200. Set.flatten.tests.associative                     : [Result] (+4 metadata)
    1201. Set.flatten.tests.unit                            : [Result] (+4 metadata)
    1202. Set.foldLeft                                      : (b
                                                            ->{e} a
                                                            ->{e} b)
                                                            -> b
                                                            -> Set
                                                              a
                                                            ->{e} b (+3 metadata)
    1203. Set.foldLeft.doc                                  : Doc (+2 metadata)
    1204. Set.foldLeft.tests.homomorphism                   : [Result] (+4 metadata)
    1205. Set.foldRight                                     : (a
                                                            ->{e} b
                                                            ->{e} b)
                                                            -> b
                                                            -> Set
                                                              a
                                                            ->{e} b (+3 metadata)
    1206. Set.foldRight.doc                                 : Doc (+2 metadata)
    1207. Set.foldRight.tests.homomorphism                  : [Result] (+4 metadata)
    1208. Set.fromList                                      : [k]
                                                            -> Set
                                                              k (+3 metadata)
    1209. Set.insert                                        : k
                                                            -> Set
                                                              k
                                                            -> Set
                                                              k (+2 metadata)
    1210. Set.intersect                                     : Set
                                                              k
                                                            -> Set
                                                              k
                                                            -> Set
                                                              k (+3 metadata)
    1211. Set.map                                           : (a
                                                            ->{e} b)
                                                            -> Set
                                                              a
                                                            ->{e} Set
                                                              b (+4 metadata)
    1212. Set.map.doc                                       : Doc (+3 metadata)
    1213. Set.map.test                                      : [Result] (+4 metadata)
    1214. Set.singleton                                     : a
                                                            -> Set
                                                              a (+4 metadata)
    1215. Set.singleton.doc                                 : Doc (+3 metadata)
    1216. Set.singleton.test                                : [Result] (+4 metadata)
    1217. Set.size                                          : Set
                                                              k
                                                            -> Nat (+2 metadata)
    1218. Set.subset                                        : Set
                                                              a
                                                            -> Set
                                                              a
                                                            -> Boolean (+4 metadata)
    1219. Set.subset.doc                                    : Doc (+3 metadata)
    1220. Set.superset                                      : Set
                                                              a
                                                            -> Set
                                                              a
                                                            -> Boolean (+4 metadata)
    1221. Set.superset.doc                                  : Doc (+3 metadata)
    1222. Set.toList                                        : Set
                                                              k
                                                            -> [k] (+2 metadata)
    1223. Set.toMap                                         : (k
                                                            ->{e} v)
                                                            -> Set
                                                              k
                                                            ->{e} Map
                                                              k
                                                              v (+2 metadata)
    1224. Set.underlying                                    : Set
                                                              k
                                                            -> Map
                                                              k
                                                              () (+2 metadata)
    1225. Set.union                                         : Set
                                                              k
                                                            -> Set
                                                              k
                                                            -> Set
                                                              k (+3 metadata)
    1226. Set.unions                                        : [Set
                                                              a]
                                                            -> Set
                                                              a (+4 metadata)
    1227. Set.unions.doc                                    : Doc (+2 metadata)
    1228. Set.unions.test                                   : [Result] (+4 metadata)
    1229. Store.doc                                         : Doc (+2 metadata)
    1230. Store.get.doc                                     : Doc (+3 metadata)
    1231. Store.get.examples.ex1                            : Nat (+2 metadata)
    1232. Store.local                                       : a
                                                            -> '{g,
                                                            Store
                                                              a} v
                                                            ->{g,
                                                            Store
                                                              a} v (+3 metadata)
    1233. Store.local.doc                                   : Doc (+3 metadata)
    1234. Store.local.examples.ex1                          : ( Nat,
                                                              Nat,
                                                              Nat) (+2 metadata)
    1235. Store.local.test                                  : [Result] (+6 metadata)
    1236. Store.modify                                      : (a
                                                            ->{g} a)
                                                            ->{g,
                                                            Store
                                                              a} () (+3 metadata)
    1237. Store.modify.doc                                  : Doc (+3 metadata)
    1238. Store.modify.examples.increment                   : Nat (+3 metadata)
    1239. Store.modify.test                                 : [Result] (+6 metadata)
    1240. Store.put.doc                                     : Doc (+3 metadata)
    1241. Store.put.examples.ex1                            : Nat (+2 metadata)
    1242. Store.withInitialValue                            : a
                                                            -> '{g,
                                                            Store
                                                              a} v
                                                            ->{g} v (+4 metadata)
    1243. Store.withInitialValue.doc                        : Doc (+3 metadata)
    1244. Store.withInitialValue.handler                    : a
                                                            -> Request
                                                              (Store
                                                                a)
                                                              v
                                                            -> v (+2 metadata)
    1245. Store.withInitialValue.laws.law1                  : v
                                                            ->{Store
                                                              v} Test (+3 metadata)
    1246. Store.withInitialValue.tests.law1                 : [Result] (+6 metadata)
    1247. Stream.range                                      : Nat
                                                            -> Nat
                                                            ->{Stream
                                                              Nat} () (+2 metadata)
    1248. Stream.tests.ex1                                  : [Result] (+4 metadata)
    1249. Stream.toList                                     : '{e,
                                                            Stream
                                                              a} ()
                                                            ->{e} [a] (+2 metadata)
    1250. Stream.toList.handler                             : Request
                                                              {Stream
                                                                a}
                                                              ()
                                                            -> [a] (+2 metadata)
    1251. Text.!=                                           : Text
                                                            -> Text
                                                            -> Boolean
    1252. Text.++                                           : Text
                                                            -> Text
                                                            -> Text
    1253. Text.drop                                         : Nat
                                                            -> Text
                                                            -> Text
    1254. Text.empty                                        : Text
    1255. Text.eq                                           : Text
                                                            -> Text
                                                            -> Boolean
    1256. Text.fromCharList                                 : [Char]
                                                            -> Text
    1257. Text.gt                                           : Text
                                                            -> Text
                                                            -> Boolean
    1258. Text.gteq                                         : Text
                                                            -> Text
                                                            -> Boolean
    1259. Text.lt                                           : Text
                                                            -> Text
                                                            -> Boolean
    1260. Text.lteq                                         : Text
                                                            -> Text
                                                            -> Boolean
    1261. Text.reverse                                      : Text
                                                            -> Text (+2 metadata)
    1262. Text.reverse.doc                                  : Doc (+2 metadata)
    1263. Text.reverse.tests.homomorphism                   : [Result] (+4 metadata)
    1264. Text.reverse.tests.isomorphism                    : [Result] (+4 metadata)
    1265. Text.size                                         : Text
                                                            -> Nat
    1266. Text.split                                        : Char
                                                            -> Text
                                                            -> [Text] (+4 metadata)
    1267. Text.split.doc                                    : Doc (+2 metadata)
    1268. Text.split.examples.ex1                           : [Text] (+2 metadata)
    1269. Text.split.examples.ex2                           : [Text] (+2 metadata)
    1270. Text.split.test                                   : [Result] (+4 metadata)
    1271. Text.take                                         : Nat
                                                            -> Text
                                                            -> Text
    1272. Text.toCharList                                   : Text
                                                            -> [Char]
    1273. Text.uncons                                       : Text
                                                            -> Optional
                                                              ( Char,
                                                                Text)
    1274. Text.unsnoc                                       : Text
                                                            -> Optional
                                                              ( Text,
                                                                Char)
    1275. Trie.empty                                        : Trie
                                                              k
                                                              v (+2 metadata)
    1276. Trie.gen                                          : '{Gen} k
                                                            ->{Gen} '{Gen} v
                                                            ->{Gen} '{Gen} Trie
                                                              k
                                                              v (+2 metadata)
    1277. Trie.head                                         : Trie
                                                              k
                                                              v
                                                            -> Optional
                                                              v (+2 metadata)
    1278. Trie.head.modify                                  : (Optional
                                                              v
                                                            ->{𝕖} Optional
                                                              v)
                                                            -> Trie
                                                              k
                                                              v
                                                            ->{𝕖} Trie
                                                              k
                                                              v (+2 metadata)
    1279. Trie.head.set                                     : Optional
                                                              v
                                                            -> Trie
                                                              k
                                                              v
                                                            -> Trie
                                                              k
                                                              v (+2 metadata)
    1280. Trie.insert                                       : [k]
                                                            -> v
                                                            -> Trie
                                                              k
                                                              v
                                                            -> Trie
                                                              k
                                                              v (+1 metadata)
    1281. Trie.lookup                                       : [k]
                                                            ->{𝕖} Trie
                                                              k
                                                              v
                                                            ->{𝕖} Optional
                                                              v (+2 metadata)
    1282. Trie.map                                          : (v1
                                                            ->{e} v2)
                                                            ->{e} Trie
                                                              k
                                                              v1
                                                            ->{e} Trie
                                                              k
                                                              v2 (+2 metadata)
    1283. Trie.mapKeys                                      : (k1
                                                            ->{e} k2)
                                                            ->{e} Trie
                                                              k1
                                                              v
                                                            ->{e} Trie
                                                              k2
                                                              v (+3 metadata)
    1284. Trie.singleton                                    : [k]
                                                            ->{g} v
                                                            ->{g} Trie
                                                              k
                                                              v (+3 metadata)
    1285. Trie.tail                                         : Trie
                                                              k
                                                              v
                                                            -> Map
                                                              k
                                                              (Trie
                                                                k
                                                                v) (+2 metadata)
    1286. Trie.tail.modify                                  : (Map
                                                              k111
                                                              (Trie
                                                                k111
                                                                v)
                                                            ->{𝕖} Map
                                                              k
                                                              (Trie
                                                                k
                                                                v))
                                                            -> Trie
                                                              k111
                                                              v
                                                            ->{𝕖} Trie
                                                              k
                                                              v (+2 metadata)
    1287. Trie.tail.set                                     : Map
                                                              k
                                                              (Trie
                                                                k
                                                                v)
                                                            -> Trie
                                                              k111
                                                              v
                                                            -> Trie
                                                              k
                                                              v (+2 metadata)
    1288. Trie.union                                        : Trie
                                                              k
                                                              v
                                                            -> Trie
                                                              k
                                                              v
                                                            -> Trie
                                                              k
                                                              v (+1 metadata)
    1289. Trie.union.tests.values                           : [Result] (+3 metadata)
    1290. Trie.unionWith                                    : (v
                                                            ->{e} v
                                                            ->{e} v)
                                                            ->{e} Trie
                                                              k
                                                              v
                                                            ->{e} Trie
                                                              k
                                                              v
                                                            ->{e} Trie
                                                              k
                                                              v (+3 metadata)
    1291. Trie.values                                       : Trie
                                                              k
                                                              v
                                                            -> [v] (+2 metadata)
    1292. Tuple.at1                                         : Tuple
                                                              a
                                                              b
                                                            -> a (+1 metadata)
    1293. Tuple.at1.doc                                     : Doc (+3 metadata)
    1294. Tuple.at1.tests.ex1                               : [Result] (+4 metadata)
    1295. Tuple.at2                                         : Tuple
                                                              a
                                                              (Tuple
                                                                b
                                                                c)
                                                            -> b (+1 metadata)
    1296. Tuple.at2.doc                                     : Doc (+3 metadata)
    1297. Tuple.at2.tests.ex1                               : [Result] (+4 metadata)
    1298. Tuple.at3                                         : Tuple
                                                              a
                                                              (Tuple
                                                                b
                                                                (Tuple
                                                                  c
                                                                  d))
                                                            -> c (+1 metadata)
    1299. Tuple.at3.doc                                     : Doc (+3 metadata)
    1300. Tuple.at3.tests.ex1                               : [Result] (+4 metadata)
    1301. Tuple.at3.tests.ex2                               : [Result] (+4 metadata)
    1302. Tuple.at4                                         : Tuple
                                                              a
                                                              (Tuple
                                                                b
                                                                (Tuple
                                                                  c
                                                                  (Tuple
                                                                    d
                                                                    e)))
                                                            -> d (+1 metadata)
    1303. Tuple.at4.doc                                     : Doc (+3 metadata)
    1304. Tuple.at4.tests.ex1                               : [Result] (+4 metadata)
    1305. Tuple.at4.tests.ex2                               : [Result] (+4 metadata)
    1306. Tuple.doc                                         : Doc (+3 metadata)
    1307. Tuple.first                                       : (i
                                                            ->{g} o)
                                                            -> Tuple
                                                              i
                                                              b
                                                            ->{g} Tuple
                                                              o
                                                              b (+3 metadata)
    1308. Tuple.first.doc                                   : Doc (+2 metadata)
    1309. Tuple.mapLeft                                     : (a
                                                            ->{g} b)
                                                            -> ( a,
                                                              c)
                                                            ->{g} ( b,
                                                              c) (+3 metadata)
    1310. Tuple.mapLeft.doc                                 : Doc (+2 metadata)
    1311. Tuple.mapPair                                     : ( (a
                                                            ->{g} b),
                                                              (c
                                                            ->{g} d))
                                                            -> ( a,
                                                              c)
                                                            ->{g} ( b,
                                                              d) (+3 metadata)
    1312. Tuple.mapPair.doc                                 : Doc (+2 metadata)
    1313. Tuple.mapRight                                    : (a
                                                            ->{g} b)
                                                            -> ( c,
                                                              a)
                                                            ->{g} ( c,
                                                              b) (+3 metadata)
    1314. Tuple.mapRight.doc                                : Doc (+2 metadata)
    1315. Tuple.pair                                        : a
                                                            -> b
                                                            -> ( a,
                                                              b) (+3 metadata)
    1316. Tuple.pair.doc                                    : Doc (+3 metadata)
    1317. Tuple.second                                      : (i
                                                            ->{g} o)
                                                            -> Tuple
                                                              a
                                                              (Tuple
                                                                i
                                                                b)
                                                            ->{g} Tuple
                                                              a
                                                              (Tuple
                                                                o
                                                                b) (+3 metadata)
    1318. Tuple.second.doc                                  : Doc (+2 metadata)
    1319. Tuple.tests.ex1                                   : [Result] (+3 metadata)
    1320. Tuple.tests.ex2                                   : [Result] (+4 metadata)
    1321. Universal.!=                                      : a
                                                            -> a
                                                            -> Boolean (+2 metadata)
    1322. Universal.<                                       : a
                                                            -> a
                                                            -> Boolean
    1323. Universal.<=                                      : a
                                                            -> a
                                                            -> Boolean
    1324. Universal.==                                      : a
                                                            -> a
                                                            -> Boolean
    1325. Universal.>                                       : a
                                                            -> a
                                                            -> Boolean
    1326. Universal.>=                                      : a
                                                            -> a
                                                            -> Boolean
    1327. Universal.compare                                 : a
                                                            -> a
                                                            -> Int
    1328. Universal.compareOn                               : (a
                                                            ->{e} x)
                                                            -> a
                                                            -> a
                                                            ->{e} Ordering (+3 metadata)
    1329. Universal.compareOn.doc                           : Doc (+2 metadata)
    1330. Universal.max                                     : a
                                                            -> a
                                                            -> a (+3 metadata)
    1331. Universal.max.doc                                 : Doc (+2 metadata)
    1332. Universal.max.tests.absorption                    : [Result] (+3 metadata)
    1333. Universal.max.tests.associative                   : [Result] (+4 metadata)
    1334. Universal.max.tests.commutative                   : [Result] (+4 metadata)
    1335. Universal.max.tests.distributesOverMin            : [Result] (+3 metadata)
    1336. Universal.max.tests.idempotent                    : [Result] (+3 metadata)
    1337. Universal.max.tests.partialOrder                  : [Result] (+4 metadata)
    1338. Universal.min                                     : a
                                                            -> a
                                                            -> a (+3 metadata)
    1339. Universal.min.doc                                 : Doc (+2 metadata)
    1340. Universal.min.tests.absorption                    : [Result] (+4 metadata)
    1341. Universal.min.tests.associative                   : [Result] (+3 metadata)
    1342. Universal.min.tests.commutative                   : [Result] (+3 metadata)
    1343. Universal.min.tests.distributesOverMax            : [Result] (+3 metadata)
    1344. Universal.min.tests.idempotent                    : [Result] (+3 metadata)
    1345. Universal.min.tests.partialOrder                  : [Result] (+3 metadata)
    1346. Universal.ordering                                : a
                                                            -> a
                                                            -> Ordering (+3 metadata)
    1347. Universal.ordering.doc                            : Doc (+2 metadata)
    1348. Universal.ordering.doc.snippet1                   : Doc (+2 metadata)
    1349. Void.doc                                          : Doc (+2 metadata)
    1350. Weighted.<|>                                      : Weighted
                                                              a
                                                            -> Weighted
                                                              a
                                                            -> Weighted
                                                              a
    1351. Weighted.append                                   : Weighted
                                                              a
                                                            -> Weighted
                                                              a
                                                            -> Weighted
                                                              a (+3 metadata)
    1352. Weighted.append.doc                               : Doc
    1353. Weighted.append.examples.ex                       : [Nat]
    1354. Weighted.filter                                   : (a
                                                            ->{e} Boolean)
                                                            -> Weighted
                                                              a
                                                            ->{e} Weighted
                                                              a (+2 metadata)
    1355. Weighted.flatMap                                  : (a
                                                            ->{𝕖} Weighted
                                                              b)
                                                            -> Weighted
                                                              a
                                                            ->{𝕖} Weighted
                                                              b
    1356. Weighted.fromList                                 : [a]
                                                            -> Weighted
                                                              a
    1357. Weighted.ints                                     : Weighted
                                                              Int (+2 metadata)
    1358. Weighted.lists                                    : Weighted
                                                              a
                                                            -> Weighted
                                                              [a]
    1359. Weighted.map                                      : (a
                                                            ->{e} b)
                                                            -> Weighted
                                                              a
                                                            ->{e} Weighted
                                                              b
    1360. Weighted.mergeWith                                : (a
                                                            ->{𝕖} b
                                                            ->{𝕖} c)
                                                            -> Weighted
                                                              a
                                                            -> Weighted
                                                              b
                                                            ->{𝕖} Weighted
                                                              c
    1361. Weighted.nats                                     : Weighted
                                                              Nat
    1362. Weighted.sample                                   : Nat
                                                            -> Weighted
                                                              a
                                                            -> [a]
    1363. Weighted.weight                                   : Nat
                                                            ->{e} '{e} Weighted
                                                              a
                                                            ->{e} Weighted
                                                              a
    1364. Weighted.yield                                    : a
                                                            -> Weighted
                                                              a
    1365. absurd                                            : Void
                                                            -> a (+3 metadata)
    1366. absurd.doc                                        : Doc (+2 metadata)
    1367. absurdly                                          : '{e} Void
                                                            ->{e} a (+2 metadata)
    1368. andThen                                           : (a
                                                            ->{𝕖} b)
                                                            -> (b
                                                            ->{𝕖} c)
                                                            -> a
                                                            ->{𝕖} c
    1369. bug                                               : a
                                                            -> b
    1370. const                                             : a
                                                            -> b
                                                            -> a
    1371. force                                             : '{e} a
                                                            ->{e} a (+3 metadata)
    1372. force.doc                                         : Doc (+2 metadata)
    1373. forever                                           : '{e} a
                                                            ->{e} b (+3 metadata)
    1374. forever'                                          : '{g} a
                                                            -> '{g} b (+3 metadata)
    1375. forever'.doc                                      : Doc
    1376. forever.doc                                       : Doc (+2 metadata)
    1377. id                                                : a
                                                            -> a
    1378. ignore                                            : a
                                                            -> () (+3 metadata)
    1379. ignore.doc                                        : Doc (+2 metadata)
    1380. io.accept                                         : Socket
                                                            ->{IO} Socket
    1381. io.bracket                                        : '{IO} a
                                                            -> (a
                                                            ->{IO} b)
                                                            -> (a
                                                            ->{IO} c)
                                                            ->{IO} c
    1382. io.clientSocket                                   : HostName
                                                            -> ServiceName
                                                            ->{IO} Socket
    1383. io.closeFile                                      : Handle
                                                            ->{IO} ()
    1384. io.closeSocket                                    : Socket
                                                            ->{IO} ()
    1385. io.createDirectory                                : FilePath
                                                            ->{IO} ()
    1386. io.delay                                          : Nat
                                                            ->{IO} () (+1 metadata)
    1387. io.delay.doc                                      : Doc (+2 metadata)
    1388. io.delay.examples.ex1                             : '{IO} () (+2 metadata)
    1389. io.directoryContents                              : FilePath
                                                            ->{IO} [FilePath]
    1390. io.fileExists                                     : FilePath
                                                            ->{IO} Boolean
    1391. io.fork                                           : '{IO} a
                                                            ->{IO} ThreadId
    1392. io.getBuffering                                   : Handle
                                                            ->{IO} Optional
                                                              BufferMode
    1393. io.getCurrentDirectory                            : '{IO} FilePath
    1394. io.getFileSize                                    : FilePath
                                                            ->{IO} Nat
    1395. io.getFileTimestamp                               : FilePath
                                                            ->{IO} EpochTime
    1396. io.getLine                                        : Handle
                                                            ->{IO} Text
    1397. io.getTemporaryDirectory                          : '{IO} FilePath
    1398. io.getText                                        : Handle
                                                            ->{IO} Text
    1399. io.isDirectory                                    : FilePath
                                                            ->{IO} Boolean
    1400. io.isFileEOF                                      : Handle
                                                            ->{IO} Boolean
    1401. io.isFileOpen                                     : Handle
                                                            ->{IO} Boolean
    1402. io.isSeekable                                     : Handle
                                                            ->{IO} Boolean
    1403. io.kill                                           : ThreadId
                                                            ->{IO} ()
    1404. io.listen                                         : Socket
                                                            ->{IO} ()
    1405. io.openFile                                       : FilePath
                                                            -> Mode
                                                            ->{IO} Handle
    1406. io.position                                       : Handle
                                                            ->{IO} Int
    1407. io.printLine                                      : Text
                                                            ->{IO} ()
    1408. io.putText                                        : Handle
                                                            -> Text
                                                            ->{IO} ()
    1409. io.readLine                                       : '{IO} Text
    1410. io.receive                                        : Socket
                                                            -> Nat
                                                            ->{IO} Optional
                                                              Bytes
    1411. io.removeDirectory                                : FilePath
                                                            ->{IO} ()
    1412. io.removeFile                                     : FilePath
                                                            ->{IO} ()
    1413. io.renameDirectory                                : FilePath
                                                            -> FilePath
                                                            ->{IO} ()
    1414. io.renameFile                                     : FilePath
                                                            -> FilePath
                                                            ->{IO} ()
    1415. io.rethrow                                        : Either
                                                              Error
                                                              a
                                                            ->{IO} a
    1416. io.seek                                           : Handle
                                                            -> SeekMode
                                                            -> Int
                                                            ->{IO} ()
    1417. io.send                                           : Socket
                                                            -> Bytes
                                                            ->{IO} ()
    1418. io.serverSocket                                   : Optional
                                                              HostName
                                                            -> ServiceName
                                                            ->{IO} Socket
    1419. io.setBuffering                                   : Handle
                                                            -> Optional
                                                              BufferMode
                                                            ->{IO} ()
    1420. io.setCurrentDirectory                            : FilePath
                                                            ->{IO} ()
    1421. io.stderr                                         : Handle
    1422. io.stdin                                          : Handle
    1423. io.stdout                                         : Handle
    1424. io.systemTime                                     : '{IO} EpochTime
    1425. metadata.authors.andriypalamarchuk                : Author
    1426. metadata.authors.andriypalamarchuk.guid           : GUID
    1427. metadata.authors.anovstrup                        : Author
    1428. metadata.authors.anovstrup.guid                   : GUID
    1429. metadata.authors.aryairani                        : Author
    1430. metadata.authors.aryairani.guid                   : GUID
    1431. metadata.authors.atacratic                        : Author (+2 metadata)
    1432. metadata.authors.atacratic.guid                   : GUID (+2 metadata)
    1433. metadata.authors.ceedubs                          : Author
    1434. metadata.authors.ceedubs.guid                     : GUID
    1435. metadata.authors.daanleijen                       : Author
    1436. metadata.authors.daanleijen.guid                  : GUID
    1437. metadata.authors.dariooddenino                    : Author
    1438. metadata.authors.dariooddenino.guid               : GUID
    1439. metadata.authors.dolio                            : Author
    1440. metadata.authors.dolio.guid                       : GUID
    1441. metadata.authors.emiflake                         : Author
    1442. metadata.authors.emiflake.guid                    : GUID
    1443. metadata.authors.fabianböller                     : Author
    1444. metadata.authors.fabianböller.guid                : GUID
    1445. metadata.authors.heathermiller                    : Author
    1446. metadata.authors.heathermiller.guid               : GUID
    1447. metadata.authors.pchiusano                        : Author
    1448. metadata.authors.pchiusano.guid                   : GUID
    1449. metadata.authors.pete_ts                          : Author
    1450. metadata.authors.pete_ts.guid                     : GUID
    1451. metadata.authors.runarorama                       : Author
    1452. metadata.authors.runarorama.guid                  : GUID
    1453. metadata.authors.unisoncomputing.guid             : GUID
    1454. metadata.authors.universityofglasgow              : Author
    1455. metadata.authors.universityofglasgow.guid         : GUID
    1456. metadata.authors.vanev                            : Author
    1457. metadata.authors.vanev.guid                       : GUID
    1458. metadata.authors.zenhack                          : Author
    1459. metadata.authors.zenhack.guid                     : GUID
    1460. metadata.copyrightHolders.andriypalamarchuk       : CopyrightHolder
    1461. metadata.copyrightHolders.anovstrup               : CopyrightHolder
    1462. metadata.copyrightHolders.atacratic               : CopyrightHolder (+2 metadata)
    1463. metadata.copyrightHolders.ceedubs                 : CopyrightHolder
    1464. metadata.copyrightHolders.daanleijen              : CopyrightHolder
    1465. metadata.copyrightHolders.dariooddenino           : CopyrightHolder
    1466. metadata.copyrightHolders.emiflake                : CopyrightHolder
    1467. metadata.copyrightHolders.fabianböller            : CopyrightHolder
    1468. metadata.copyrightHolders.pete_ts                 : CopyrightHolder
    1469. metadata.copyrightHolders.unisoncomputing         : CopyrightHolder
    1470. metadata.copyrightHolders.universityofglasgow     : CopyrightHolder
    1471. metadata.copyrightHolders.vanev                   : CopyrightHolder
    1472. metadata.copyrightHolders.zenhack                 : CopyrightHolder
    1473. metadata.isPropagated                             : IsPropagated
    1474. metadata.isTest                                   : IsTest
    1475. metadata.licenseTypes.bsd2                        : LicenseType
    1476. metadata.licenseTypes.bsd3                        : LicenseType
    1477. metadata.licenseTypes.mit                         : LicenseType
    1478. metadata.licenses.anovstrup.bsd2_2020             : License
    1479. metadata.licenses.anovstrup.bsd3_2020             : License
    1480. metadata.licenses.anovstrup.mit_2020              : License
    1481. metadata.licenses.atacratic.mit_2020              : License (+2 metadata)
    1482. metadata.licenses.ceedubs2020                     : License
    1483. metadata.licenses.dariooddenino.dariooddenino2020 : License
    1484. metadata.licenses.datamapinternal                 : License (+2 metadata)
    1485. metadata.licenses.emiflake_mit_2020               : License (+1 metadata)
    1486. metadata.licenses.fböller2020                     : License
    1487. metadata.licenses.pete_ts.bsd2_2020               : License
    1488. metadata.licenses.pete_ts.bsd3_2020               : License
    1489. metadata.licenses.pete_ts.mit_2020                : License
    1490. metadata.licenses.unisoncomputing2020             : License
    1491. metadata.licenses.zenhack2020                     : License (+2 metadata)
    1492. metadata.unassignedGuids.guid3                    : GUID
    1493. metadata.unassignedGuids.guid4                    : GUID
    1494. metadata.unassignedGuids.guid5                    : GUID
    1495. metadata.unassignedGuids.guid6                    : GUID
    1496. metadata.unassignedGuids.guid8                    : GUID
    1497. prs.pr1.note1                                     : Doc
    1498. repeat                                            : Nat
                                                            -> '{e} a
                                                            ->{e} () (+3 metadata)
    1499. repeat.doc                                        : Doc (+2 metadata)
    1500. ┌ test.===                                        : a
                                                            -> a
                                                            -> Boolean (+5 metadata)
    1501. └ test.assertEquals                               : a
                                                            -> a
                                                            -> Boolean (+5 metadata)
    1502. test.Gen.append                                   : '{Gen} a
                                                            -> '{Gen} a
                                                            -> '{Gen} a (+4 metadata)
    1503. test.Gen.append.doc                               : Doc (+3 metadata)
    1504. test.Gen.append.examples.ex1                      : [Nat] (+3 metadata)
    1505. test.Gen.append.examples.ex2                      : [Nat] (+3 metadata)
    1506. test.Gen.toWeighted                               : '{e,
                                                            Gen} a
                                                            ->{e} Weighted
                                                              a
    1507. test.assert                                       : Boolean
                                                            -> e
                                                            -> a
                                                            -> a (+3 metadata)
    1508. test.assert.doc                                   : Doc (+2 metadata)
    1509. test.assertEquals.doc                             : Doc (+4 metadata)
    1510. test.both                                         : Test
                                                            -> Test
                                                            -> Test (+3 metadata)
    1511. test.cost                                         : Nat
                                                            -> '{Gen} a
                                                            -> '{Gen} a (+1 metadata)
    1512. test.expect                                       : Boolean
                                                            -> Test (+1 metadata)
    1513. ┌ test.fail                                       : Test (+1 metadata)
    1514. └ test.internals.v1.Test.failed                   : Test (+1 metadata)
    1515. ┌ test.failWith                                   : Text
                                                            -> Test (+3 metadata)
    1516. └ test.internals.v1.Test.failedWith               : Text
                                                            -> Test (+3 metadata)
    1517. test.gen.Char.alpha                               : '{Gen} Char (+4 metadata)
    1518. test.gen.Char.alpha.doc                           : Doc (+4 metadata)
    1519. test.gen.Char.alpha.sampled                       : [Char] (+3 metadata)
    1520. test.gen.Char.ascii                               : '{Gen} Char (+4 metadata)
    1521. test.gen.Char.ascii.doc                           : Doc (+3 metadata)
    1522. test.gen.Char.ascii.sampled                       : [Char] (+3 metadata)
    1523. test.gen.Char.asciiNonPrintable                   : '{Gen} Char (+3 metadata)
    1524. test.gen.Char.asciiNonPrintable.doc               : Doc (+3 metadata)
    1525. test.gen.Char.asciiNonPrintable.sampled           : [Char] (+3 metadata)
    1526. test.gen.Char.asciiPrintable                      : '{Gen} Char (+3 metadata)
    1527. test.gen.Char.asciiPrintable.doc                  : Doc (+3 metadata)
    1528. test.gen.Char.asciiPrintable.sampled              : [Char] (+3 metadata)
    1529. test.gen.Char.digit                               : '{Gen} Char (+3 metadata)
    1530. test.gen.Char.digit.doc                           : Doc (+3 metadata)
    1531. test.gen.Char.digit.sampled                       : [Char] (+3 metadata)
    1532. test.gen.Char.hexDigit                            : '{Gen} Char (+4 metadata)
    1533. test.gen.Char.hexDigit.doc                        : Doc (+3 metadata)
    1534. test.gen.Char.hexDigit.sampled                    : [Char] (+3 metadata)
    1535. test.gen.Char.lower                               : '{Gen} Char (+3 metadata)
    1536. test.gen.Char.lower.doc                           : Doc (+3 metadata)
    1537. test.gen.Char.lower.sampled                       : [Char] (+3 metadata)
    1538. test.gen.Char.upper                               : '{Gen} Char (+3 metadata)
    1539. test.gen.Char.upper.doc                           : Doc (+3 metadata)
    1540. test.gen.Char.upper.sampled                       : [Char] (+3 metadata)
    1541. test.gen.Text.ascii                               : '{Gen} Text (+3 metadata)
    1542. test.gen.Text.ascii.doc                           : Doc (+2 metadata)
    1543. test.gen.Text.asciiPrintable                      : '{Gen} Text (+3 metadata)
    1544. test.gen.Text.asciiPrintable.doc                  : Doc (+2 metadata)
    1545. test.gen.atLeastOne                               : '{Gen} a
                                                            -> '{Gen} Nonempty
                                                              a (+3 metadata)
    1546. test.gen.atLeastOne.doc                           : Doc (+2 metadata)
    1547. test.gen.boolean                                  : '{Gen} Boolean (+3 metadata)
    1548. test.gen.boolean.doc                              : Doc (+2 metadata)
    1549. test.gen.either                                   : '{Gen} a
                                                            -> '{Gen} b
                                                            -> '{Gen} Either
                                                              a
                                                              b (+3 metadata)
    1550. test.gen.either.doc                               : Doc (+2 metadata)
    1551. test.gen.either.test                              : [Result] (+4 metadata)
    1552. test.gen.empty                                    : '{Gen} a
    1553. test.gen.functions.logic                          : '{Gen} (Boolean
                                                            -> Boolean
                                                            -> Boolean) (+3 metadata)
    1554. test.gen.functions.logic.doc                      : Doc (+2 metadata)
    1555. test.gen.functions.someOrNone                     : (a
                                                            ->{g} b)
                                                            -> b
                                                            -> '{Gen} (Optional
                                                              a
                                                            ->{g} Optional
                                                              b) (+3 metadata)
    1556. test.gen.functions.someOrNone.doc                 : Doc (+2 metadata)
    1557. test.gen.functions.yesNo                          : '{Gen} (Boolean
                                                            -> Boolean) (+3 metadata)
    1558. test.gen.functions.yesNo.doc                      : Doc (+2 metadata)
    1559. test.gen.int                                      : '{Gen} Int (+2 metadata)
    1560. test.gen.listOf                                   : '{Gen} a
                                                            -> '{Gen} [a]
    1561. test.gen.mapOf.doc                                : Doc (+3 metadata)
    1562. test.gen.nat                                      : '{Gen} Nat
    1563. test.gen.natIn                                    : Nat
                                                            -> Nat
                                                            -> '{Gen} Nat
    1564. test.gen.nonemptyListOf                           : '{Gen} a
                                                            -> '{Gen} Nonempty
                                                              a (+2 metadata)
    1565. test.gen.nonzeroNat                               : '{Gen} Nat (+3 metadata)
    1566. test.gen.nonzeroNat.doc                           : Doc (+2 metadata)
    1567. test.gen.oneOf                                    : [a]
                                                            -> '{Gen} a (+3 metadata)
    1568. test.gen.oneOf.doc                                : Doc (+2 metadata)
    1569. test.gen.optional                                 : '{Gen} a
                                                            -> '{Gen} Optional
                                                              a (+3 metadata)
    1570. test.gen.optional.doc                             : Doc (+2 metadata)
    1571. test.gen.optional.test                            : [Result] (+4 metadata)
    1572. test.gen.pairOf                                   : '{Gen} a
                                                            -> '{Gen} b
                                                            -> '{Gen} ( a,
                                                              b) (+3 metadata)
    1573. test.gen.pairOf.doc                               : Doc (+2 metadata)
    1574. test.gen.setOf                                    : '{Gen} a
                                                            -> '{Gen} Set
                                                              a (+4 metadata)
    1575. test.gen.setOf.doc                                : Doc (+3 metadata)
    1576. test.internals.v1.Domain.boolean                  : Domain
                                                              Boolean
    1577. test.internals.v1.Domain.ints                     : Domain
                                                              Int
    1578. test.internals.v1.Domain.lift2                    : (a
                                                            ->{𝕖} b
                                                            ->{𝕖} c)
                                                            -> Domain
                                                              a
                                                            -> Domain
                                                              b
                                                            ->{𝕖} Domain
                                                              c
    1579. test.internals.v1.Domain.lists                    : Domain
                                                              [( )]
    1580. test.internals.v1.Domain.listsOf                  : Domain
                                                              a
                                                            -> Domain
                                                              [a]
    1581. test.internals.v1.Domain.map                      : (a
                                                            ->{𝕖} b)
                                                            -> Domain
                                                              a
                                                            ->{𝕖} Domain
                                                              b
    1582. test.internals.v1.Domain.nats                     : Domain
                                                              Nat
    1583. test.internals.v1.Domain.pairs                    : Domain
                                                              a
                                                            -> Domain
                                                              ( a,
                                                                a)
    1584. test.internals.v1.Domain.sample                   : Nat
                                                            -> Domain
                                                              a
                                                            -> [a]
    1585. test.internals.v1.Domain.smallSize                : Nat
    1586. test.internals.v1.Domain.tuples                   : Domain
                                                              a
                                                            -> Domain
                                                              b
                                                            -> Domain
                                                              (Tuple
                                                                a
                                                                b)
    1587. test.internals.v1.Domain.weighted                 : Domain
                                                              a
                                                            -> Weighted
                                                              a
    1588. test.internals.v1.Scope.cons                      : Text
                                                            -> Scope
                                                            -> Scope
    1589. test.internals.v1.Status.combine                  : Status
                                                            -> Status
                                                            -> Status
    1590. test.internals.v1.Status.pending                  : Status
                                                            -> Status
    1591. test.internals.v1.Success.combine                 : Success
                                                            -> Success
                                                            -> Success
    1592. test.internals.v1.Test.Report.combine             : Report
                                                            -> Report
                                                            -> Report (+3 metadata)
    1593. test.internals.v1.Test.Report.empty               : Report (+2 metadata)
    1594. test.internals.v1.Test.Report.toCLIResult         : Report
                                                            -> [Result] (+2 metadata)
    1595. test.internals.v1.Test.check                      : Boolean
                                                            -> [Result] (+3 metadata)
    1596. test.internals.v1.Test.check'                     : Boolean
                                                            -> Test (+1 metadata)
    1597. test.internals.v1.Test.finished                   : Status
                                                            -> Test (+3 metadata)
    1598. test.internals.v1.Test.forAll                     : Nat
                                                            -> Domain
                                                              a
                                                            -> (a
                                                            ->{e} Boolean)
                                                            ->{e} [Result] (+3 metadata)
    1599. test.internals.v1.Test.forAll'                    : Nat
                                                            -> Domain
                                                              a
                                                            -> (a
                                                            ->{e} Boolean)
                                                            ->{e} Test (+3 metadata)
    1600. ┌ test.internals.v1.Test.label                    : Text
                                                            -> Test
                                                            -> Test (+2 metadata)
    1601. └ test.label                                      : Text
                                                            -> Test
                                                            -> Test (+2 metadata)
    1602. test.internals.v1.Test.modifyScope                : (Scope
                                                            -> Scope)
                                                            -> Test
                                                            -> Test (+2 metadata)
    1603. test.internals.v1.Test.modifyStatus               : (Status
                                                            ->{g} Status)
                                                            -> Test
                                                            ->{g} Test (+2 metadata)
    1604. ┌ test.internals.v1.Test.passed                   : Test (+1 metadata)
    1605. └ test.ok                                         : Test (+1 metadata)
    1606. ┌ test.internals.v1.Test.passedUnexpectedly       : Test (+1 metadata)
    1607. └ test.unexpected.ok                              : Test (+1 metadata)
    1608. ┌ test.internals.v1.Test.passedWith               : Text
                                                            -> Test (+3 metadata)
    1609. └ test.okWith                                     : Text
                                                            -> Test (+3 metadata)
    1610. test.internals.v1.Test.pending                    : Test
                                                            -> Test (+1 metadata)
    1611. ┌ test.internals.v1.Test.proved                   : Test (+1 metadata)
    1612. └ test.prove                                      : Test (+1 metadata)
    1613. ┌ test.internals.v1.Test.provedUnexpectedly       : Test (+1 metadata)
    1614. └ test.unexpected.proven                          : Test (+1 metadata)
    1615. ┌ test.internals.v1.Test.provedWith               : Text
                                                            -> Test (+3 metadata)
    1616. └ test.proveWith                                  : Text
                                                            -> Test (+3 metadata)
    1617. test.internals.v1.Test.report                     : Test
                                                            -> Report (+2 metadata)
    1618. ┌ test.internals.v1.Test.run                      : Test
                                                            -> [Result] (+1 metadata)
    1619. └ test.run                                        : Test
                                                            -> [Result] (+1 metadata)
    1620. test.internals.v1.Test.runAll                     : [Test]
                                                            -> [Result] (+1 metadata)
    1621. test.internals.v1.foldReport                      : (Trie
                                                              Text
                                                              Status
                                                            ->{e} r)
                                                            -> Report
                                                            ->{e} r (+2 metadata)
    1622. test.internals.v1.foldScope                       : ([Text]
                                                            ->{𝕖} r)
                                                            -> Scope
                                                            ->{𝕖} r
    1623. test.internals.v1.foldStatus                      : r
                                                            -> (Success
                                                            ->{𝕖} r)
                                                            -> (Success
                                                            ->{𝕖} r)
                                                            -> r
                                                            -> Status
                                                            ->{𝕖} r
    1624. test.internals.v1.foldSuccess                     : (Nat
                                                            ->{𝕖} r)
                                                            -> r
                                                            -> Success
                                                            ->{𝕖} r
    1625. test.laws.absorption                              : '{Gen} a
                                                            -> (a
                                                            ->{e} a
                                                            ->{e} a)
                                                            -> (a
                                                            ->{e} a
                                                            ->{e} a)
                                                            ->{e,
                                                            Gen} Test (+4 metadata)
    1626. test.laws.absorption.doc                          : Doc (+2 metadata)
    1627. test.laws.associative                             : '{Gen} a
                                                            -> (a
                                                            ->{e} a
                                                            ->{e} a)
                                                            ->{e,
                                                            Gen} Test (+4 metadata)
    1628. test.laws.associative.doc                         : Doc (+2 metadata)
    1629. test.laws.commutative                             : '{Gen} a
                                                            -> (a
                                                            ->{e} a
                                                            ->{e} b)
                                                            ->{e,
                                                            Gen} Test (+4 metadata)
    1630. test.laws.commutative.doc                         : Doc (+2 metadata)
    1631. test.laws.distributive                            : '{Gen} a
                                                            -> (a
                                                            ->{e} a
                                                            ->{e} a)
                                                            -> (a
                                                            ->{e} a
                                                            ->{e} a)
                                                            ->{e,
                                                            Gen} Test (+4 metadata)
    1632. test.laws.distributive.doc                        : Doc (+2 metadata)
    1633. test.laws.homomorphism                            : '{Gen} a
                                                            -> (a
                                                            ->{e} b)
                                                            -> (a
                                                            ->{e} a
                                                            ->{e} a)
                                                            -> (b
                                                            ->{e} b
                                                            ->{e} b)
                                                            ->{e,
                                                            Gen} Test (+4 metadata)
    1634. test.laws.homomorphism.doc                        : Doc (+2 metadata)
    1635. test.laws.idempotence                             : '{Gen} a
                                                            -> (a
                                                            ->{e} a
                                                            ->{e} a)
                                                            ->{e,
                                                            Gen} Test (+4 metadata)
    1636. test.laws.idempotence.doc                         : Doc (+2 metadata)
    1637. test.laws.lattice                                 : '{Gen} a
                                                            -> (a
                                                            ->{e} a
                                                            ->{e} a)
                                                            -> (a
                                                            ->{e} a
                                                            ->{e} a)
                                                            ->{e,
                                                            Gen} Test (+4 metadata)
    1638. test.laws.lattice.doc                             : Doc (+2 metadata)
    1639. test.laws.reflexive                               : '{Gen} a
                                                            -> (a
                                                            ->{e} a
                                                            ->{e} Boolean)
                                                            ->{e,
                                                            Gen} Test (+3 metadata)
    1640. test.laws.transitive                              : '{Gen} a
                                                            -> (a
                                                            ->{e} a
                                                            ->{e} Boolean)
                                                            ->{e,
                                                            Gen} Test (+3 metadata)
    1641. test.pick                                         : ['{Gen} a]
                                                            -> '{Gen} a (+1 metadata)
    1642. test.runs                                         : Nat
                                                            -> '{e,
                                                            Gen} Test
                                                            ->{e} [Result] (+3 metadata)
    1643. test.sample                                       : Nat
                                                            -> '{e,
                                                            Gen} a
                                                            ->{e} [a]
    1644. test.tests                                        : [Test]
                                                            -> Test (+3 metadata)
    1645. todo                                              : a
                                                            -> b
    1646. until                                             : (a
                                                            ->{e} Boolean)
                                                            -> '{e} a
                                                            ->{e} a (+3 metadata)
    1647. until.doc                                         : Doc (+2 metadata)
    1648. until.test                                        : [Result] (+6 metadata)
    1649. while                                             : (a
                                                            ->{e} Boolean)
                                                            -> '{e} a
                                                            ->{e} a (+3 metadata)
    1650. while.doc                                         : Doc (+2 metadata)
    1651. while.test                                        : [Result] (+6 metadata)
    1652. |>                                                : a
                                                            -> (a
                                                            ->{𝕖} b)
                                                            ->{𝕖} b
  
    1653. patch Bag.patch (added 1 updates)
    1654. patch Set.patch (added 1 updates)
    1655. patch patch (added 211 updates)
    1656. patch test.patch
  
  Tip: You can use `todo` to see if this generated any work to
       do in this namespace and `test` to run the tests. Or you
       can use `undo` or `reflog` to undo the results of this
       merge.

```
