; ModuleID = 'obj/Debug/android/marshal_methods.arm64-v8a.ll'
source_filename = "obj/Debug/android/marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [284 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 89
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 43
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 45
	i64 160518225272466977, ; 3: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 38
	i64 165455458108447059, ; 4: Microsoft.AspNetCore.Http.Connections.dll => 0x24bd0dcceb41953 => 18
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 79
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 111
	i64 295915112840604065, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 112
	i64 535107122908063503, ; 8: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 41
	i64 634308326490598313, ; 9: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 98
	i64 702024105029695270, ; 10: System.Drawing.Common => 0x9be17343c0e7726 => 132
	i64 720058930071658100, ; 11: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 92
	i64 872800313462103108, ; 12: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 88
	i64 875677659902526502, ; 13: IdentityModel.dll => 0xc270831303c4426 => 5
	i64 940822596282819491, ; 14: System.Transactions => 0xd0e792aa81923a3 => 130
	i64 996343623809489702, ; 15: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 125
	i64 1000557547492888992, ; 16: Mono.Security.dll => 0xde2b1c9cba651a0 => 141
	i64 1120440138749646132, ; 17: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 127
	i64 1315114680217950157, ; 18: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 74
	i64 1425944114962822056, ; 19: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1624659445732251991, ; 20: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 72
	i64 1628611045998245443, ; 21: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 100
	i64 1636321030536304333, ; 22: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 93
	i64 1653644849046973826, ; 23: System.Net.WebSockets.WebSocketProtocol => 0x16f2ed3a94196d82 => 58
	i64 1731380447121279447, ; 24: Newtonsoft.Json => 0x18071957e9b889d7 => 47
	i64 1743969030606105336, ; 25: System.Memory.dll => 0x1833d297e88f2af8 => 57
	i64 1795316252682057001, ; 26: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 73
	i64 1836611346387731153, ; 27: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 111
	i64 1865037103900624886, ; 28: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 32
	i64 1875917498431009007, ; 29: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 70
	i64 1981742497975770890, ; 30: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 99
	i64 1986553961460820075, ; 31: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 121
	i64 2040001226662520565, ; 32: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 138
	i64 2133195048986300728, ; 33: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 47
	i64 2134499330197294177, ; 34: Json.Net => 0x1d9f43d4edb80c61 => 8
	i64 2136356949452311481, ; 35: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 104
	i64 2165725771938924357, ; 36: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 77
	i64 2262844636196693701, ; 37: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 88
	i64 2284400282711631002, ; 38: System.Web.Services => 0x1fb3d1f42fd4249a => 136
	i64 2329709569556905518, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 96
	i64 2335503487726329082, ; 40: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 64
	i64 2337758774805907496, ; 41: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 61
	i64 2470498323731680442, ; 42: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 83
	i64 2479423007379663237, ; 43: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 116
	i64 2497223385847772520, ; 44: System.Runtime => 0x22a7eb7046413568 => 62
	i64 2547086958574651984, ; 45: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 69
	i64 2592350477072141967, ; 46: System.Xml.dll => 0x23f9e10627330e8f => 67
	i64 2624866290265602282, ; 47: mscorlib.dll => 0x246d65fbde2db8ea => 46
	i64 2656907746661064104, ; 48: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 35
	i64 2694427813909235223, ; 49: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 108
	i64 2783046991838674048, ; 50: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 61
	i64 2903877519962373267, ; 51: OpiskeluSovellus.Android.dll => 0x284ca53810997c93 => 0
	i64 2960931600190307745, ; 52: Xamarin.Forms.Core => 0x2917579a49927da1 => 123
	i64 3017704767998173186, ; 53: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 127
	i64 3021884968805928991, ; 54: Microsoft.AspNetCore.Authorization.Policy => 0x29efe45e55c5101f => 11
	i64 3168817962471953758, ; 55: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 38
	i64 3266690593535380875, ; 56: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 10
	i64 3289520064315143713, ; 57: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 95
	i64 3303437397778967116, ; 58: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 71
	i64 3311221304742556517, ; 59: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 60
	i64 3319652371029784140, ; 60: Prism.NavigationEx => 0x2e11c63e4103764c => 51
	i64 3328954407173783270, ; 61: Prism.NavigationEx.dll => 0x2e32d26551107ee6 => 51
	i64 3396143930648122816, ; 62: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 37
	i64 3493805808809882663, ; 63: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 114
	i64 3522470458906976663, ; 64: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 113
	i64 3531994851595924923, ; 65: System.Numerics => 0x31042a9aade235bb => 59
	i64 3571415421602489686, ; 66: System.Runtime.dll => 0x319037675df7e556 => 62
	i64 3638003163729360188, ; 67: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 33
	i64 3716579019761409177, ; 68: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 69: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 110
	i64 3772598417116884899, ; 70: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 89
	i64 3783726507060260521, ; 71: Microsoft.AspNetCore.SignalR.Common.dll => 0x34827f360c8e6ea9 => 26
	i64 3869221888984012293, ; 72: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 40
	i64 3966267475168208030, ; 73: System.Memory => 0x370b03412596249e => 57
	i64 4225924121207573736, ; 74: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 9
	i64 4243591448627561453, ; 75: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 20
	i64 4250192876909962317, ; 76: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 13
	i64 4282138915307457788, ; 77: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 139
	i64 4525561845656915374, ; 78: System.ServiceModel.Internals => 0x3ece06856b710dae => 137
	i64 4533124835995628778, ; 79: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 139
	i64 4636684751163556186, ; 80: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 118
	i64 4782108999019072045, ; 81: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 76
	i64 4794310189461587505, ; 82: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 69
	i64 4795410492532947900, ; 83: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 113
	i64 4832426131961301651, ; 84: Microsoft.AspNetCore.WebSockets => 0x431039f6b6de4a93 => 30
	i64 5112836352847824253, ; 85: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 31
	i64 5142919913060024034, ; 86: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 124
	i64 5177565741364132164, ; 87: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 19
	i64 5203618020066742981, ; 88: Xamarin.Essentials => 0x4836f704f0e652c5 => 122
	i64 5205316157927637098, ; 89: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 102
	i64 5348796042099802469, ; 90: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 103
	i64 5376510917114486089, ; 91: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 116
	i64 5408338804355907810, ; 92: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 115
	i64 5451019430259338467, ; 93: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 82
	i64 5507995362134886206, ; 94: System.Core.dll => 0x4c705499688c873e => 53
	i64 5593115988096097561, ; 95: Microsoft.AspNetCore.Routing.dll => 0x4d9ebd5b8a069d19 => 23
	i64 5692067934154308417, ; 96: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 120
	i64 5757522595884336624, ; 97: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 80
	i64 5814345312393086621, ; 98: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 108
	i64 5896680224035167651, ; 99: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 97
	i64 6014447449592687183, ; 100: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x53779c16e939ea4f => 17
	i64 6034224070161570862, ; 101: Microsoft.AspNetCore.SignalR.Client.dll => 0x53bdded235179c2e => 25
	i64 6046211982703393097, ; 102: IdentityModel.OidcClient.dll => 0x53e875c399bef949 => 6
	i64 6085203216496545422, ; 103: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 125
	i64 6086316965293125504, ; 104: FormsViewGroup.dll => 0x5476f10882baef80 => 4
	i64 6100239589957982951, ; 105: Microsoft.AspNetCore.SignalR.Core => 0x54a867962c385ae7 => 27
	i64 6222399776351216807, ; 106: System.Text.Json.dll => 0x565a67a0ffe264a7 => 65
	i64 6284145129771520194, ; 107: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 140
	i64 6319713645133255417, ; 108: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 98
	i64 6401687960814735282, ; 109: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 96
	i64 6504860066809920875, ; 110: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 77
	i64 6548213210057960872, ; 111: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 86
	i64 6560151584539558821, ; 112: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 42
	i64 6591024623626361694, ; 113: System.Web.Services.dll => 0x5b7805f9751a1b5e => 136
	i64 6659513131007730089, ; 114: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 92
	i64 6776786551522670705, ; 115: OpiskeluSovellus => 0x5e0bfb76b2273871 => 48
	i64 6783125919820072783, ; 116: Microsoft.AspNetCore.Connections.Abstractions => 0x5e228115e59ec74f => 12
	i64 6876862101832370452, ; 117: System.Xml.Linq => 0x5f6f85a57d108914 => 68
	i64 6892424314611037586, ; 118: Microsoft.AspNetCore.Http.Connections => 0x5fa6cf6581a7f592 => 18
	i64 6894844156784520562, ; 119: System.Numerics.Vectors => 0x5faf683aead1ad72 => 60
	i64 6911788284027924527, ; 120: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 14
	i64 7017588408768804231, ; 121: Microsoft.AspNetCore.SignalR.Protocols.Json => 0x61637b7a1c903587 => 29
	i64 7036436454368433159, ; 122: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 94
	i64 7103753931438454322, ; 123: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 91
	i64 7331765743953618630, ; 124: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 19
	i64 7488575175965059935, ; 125: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 68
	i64 7635363394907363464, ; 126: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 123
	i64 7637365915383206639, ; 127: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 122
	i64 7654504624184590948, ; 128: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7820441508502274321, ; 129: System.Data => 0x6c87ca1e14ff8111 => 129
	i64 7824823231109474690, ; 130: Microsoft.AspNetCore.Authorization.Policy.dll => 0x6c975b4560812982 => 11
	i64 7836164640616011524, ; 131: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 72
	i64 8044118961405839122, ; 132: System.ComponentModel.Composition => 0x6fa2739369944712 => 135
	i64 8083354569033831015, ; 133: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 95
	i64 8087206902342787202, ; 134: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 54
	i64 8103644804370223335, ; 135: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 131
	i64 8167236081217502503, ; 136: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 7
	i64 8243855692487634729, ; 137: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x72680f13124eaf29 => 29
	i64 8398329775253868912, ; 138: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 81
	i64 8400357532724379117, ; 139: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 107
	i64 8601935802264776013, ; 140: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 115
	i64 8611142787134128904, ; 141: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 14
	i64 8626175481042262068, ; 142: Java.Interop => 0x77b654e585b55834 => 7
	i64 8639588376636138208, ; 143: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 106
	i64 8645284293310146700, ; 144: Microsoft.AspNetCore.SignalR.Core.dll => 0x77fa38429503e88c => 27
	i64 8684531736582871431, ; 145: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 134
	i64 8725526185868997716, ; 146: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 54
	i64 8736992242196140300, ; 147: Json.Net.dll => 0x794008275971d10c => 8
	i64 9078292251399104661, ; 148: Microsoft.AspNetCore.SignalR.dll => 0x7dfc92b42bd32895 => 28
	i64 9253436536371915686, ; 149: OpiskeluSovellus.Android => 0x806acf80c611aba6 => 0
	i64 9312692141327339315, ; 150: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 120
	i64 9324707631942237306, ; 151: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 73
	i64 9413000421947348542, ; 152: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 13
	i64 9662334977499516867, ; 153: System.Numerics.dll => 0x8617827802b0cfc3 => 59
	i64 9678050649315576968, ; 154: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 83
	i64 9711637524876806384, ; 155: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 103
	i64 9808709177481450983, ; 156: Mono.Android.dll => 0x881f890734e555e7 => 45
	i64 9825649861376906464, ; 157: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 80
	i64 9834056768316610435, ; 158: System.Transactions.dll => 0x8879968718899783 => 130
	i64 9938556199016768930, ; 159: Microsoft.AspNetCore.Routing => 0x89ecd834cea6a5a2 => 23
	i64 9998632235833408227, ; 160: Mono.Security => 0x8ac2470b209ebae3 => 141
	i64 10038780035334861115, ; 161: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10106207375072889257, ; 162: Microsoft.AspNetCore.SignalR => 0x8c40761009a709a9 => 28
	i64 10226498071391929720, ; 163: Microsoft.Extensions.Features => 0x8debd1d049888578 => 36
	i64 10229024438826829339, ; 164: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 86
	i64 10243523786148452761, ; 165: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 15
	i64 10364469296367737616, ; 166: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 140
	i64 10376576884623852283, ; 167: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 114
	i64 10390244938473477758, ; 168: System.Net.WebSockets.WebSocketProtocol.dll => 0x903190b8bf03167e => 58
	i64 10430153318873392755, ; 169: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 84
	i64 10447083246144586668, ; 170: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 32
	i64 10458986597687352396, ; 171: Microsoft.AspNetCore.Routing.Abstractions => 0x9125c8e581b9dc4c => 22
	i64 10634102643060048396, ; 172: IdentityModel => 0x9393ec0310a3020c => 5
	i64 10847732767863316357, ; 173: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 74
	i64 11002576679268595294, ; 174: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 39
	i64 11023048688141570732, ; 175: System.Core => 0x98f9bc61168392ac => 53
	i64 11037814507248023548, ; 176: System.Xml => 0x992e31d0412bf7fc => 67
	i64 11050168729868392624, ; 177: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 21
	i64 11122995063473561350, ; 178: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 121
	i64 11162124722117608902, ; 179: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 119
	i64 11226290749488709958, ; 180: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 42
	i64 11340910727871153756, ; 181: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 85
	i64 11380782361707310188, ; 182: IdentityModel.OidcClient => 0x9df0a9428f986c6c => 6
	i64 11392833485892708388, ; 183: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 109
	i64 11513602507638267977, ; 184: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 56
	i64 11529969570048099689, ; 185: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 119
	i64 11530571088791430846, ; 186: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 40
	i64 11578238080964724296, ; 187: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 94
	i64 11580057168383206117, ; 188: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 70
	i64 11597940890313164233, ; 189: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 190: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 91
	i64 12102847907131387746, ; 191: System.Buffers => 0xa7f5f40c43256f62 => 52
	i64 12137774235383566651, ; 192: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 117
	i64 12145679461940342714, ; 193: System.Text.Json => 0xa88e1f1ebcb62fba => 65
	i64 12313367145828839434, ; 194: System.IO.Pipelines => 0xaae1de2e1c17f00a => 56
	i64 12441092376399691269, ; 195: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 9
	i64 12451044538927396471, ; 196: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 90
	i64 12466513435562512481, ; 197: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 101
	i64 12487638416075308985, ; 198: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 87
	i64 12538491095302438457, ; 199: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 78
	i64 12550732019250633519, ; 200: System.IO.Compression => 0xae2d28465e8e1b2f => 133
	i64 12700543734426720211, ; 201: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 79
	i64 12843321153144804894, ; 202: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 43
	i64 12953969983053113793, ; 203: Prism.Forms => 0xb3c5bf1106f429c1 => 50
	i64 12963446364377008305, ; 204: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 132
	i64 13196197655982686080, ; 205: Prism => 0xb7224fda06b0bf80 => 49
	i64 13295219713260136977, ; 206: Microsoft.AspNetCore.Http.Connections.Client => 0xb8821be35ba42a11 => 16
	i64 13308002692117796025, ; 207: Microsoft.AspNetCore.Routing.Abstractions.dll => 0xb8af85f08d9f94b9 => 22
	i64 13370592475155966277, ; 208: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13401370062847626945, ; 209: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 117
	i64 13404347523447273790, ; 210: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 81
	i64 13404984788036896679, ; 211: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 15
	i64 13428779960367410341, ; 212: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0xba5c9c39a8956ca5 => 24
	i64 13454009404024712428, ; 213: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 128
	i64 13491513212026656886, ; 214: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 75
	i64 13550417756503177631, ; 215: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 37
	i64 13572454107664307259, ; 216: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 110
	i64 13647894001087880694, ; 217: System.Data.dll => 0xbd670f48cb071df6 => 129
	i64 13921917134693230900, ; 218: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 31
	i64 13959074834287824816, ; 219: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 90
	i64 13967638549803255703, ; 220: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 124
	i64 14124974489674258913, ; 221: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 78
	i64 14172845254133543601, ; 222: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 104
	i64 14261073672896646636, ; 223: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 109
	i64 14486659737292545672, ; 224: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 97
	i64 14551742072151931844, ; 225: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 64
	i64 14604329626201521481, ; 226: Microsoft.AspNetCore.SignalR.Client => 0xcaad006b00747d49 => 25
	i64 14644440854989303794, ; 227: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 102
	i64 14669215534098758659, ; 228: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 35
	i64 14792063746108907174, ; 229: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 128
	i64 14809184851036126845, ; 230: Microsoft.AspNetCore.SignalR.Client.Core => 0xcd84cb28db1abe7d => 24
	i64 14843512117609491843, ; 231: OpiskeluSovellus.dll => 0xcdfebfa06d51ed83 => 48
	i64 14852515768018889994, ; 232: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 85
	i64 14912225920358050525, ; 233: System.Security.Principal.Windows => 0xcef2de7759506add => 63
	i64 14954917835170835695, ; 234: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 34
	i64 14987728460634540364, ; 235: System.IO.Compression.dll => 0xcfff1ba06622494c => 133
	i64 14988210264188246988, ; 236: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 87
	i64 15227001540531775957, ; 237: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 33
	i64 15370334346939861994, ; 238: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 84
	i64 15391712275433856905, ; 239: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 34
	i64 15565247197164990907, ; 240: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 20
	i64 15582737692548360875, ; 241: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 100
	i64 15592226634512578529, ; 242: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 10
	i64 15609085926864131306, ; 243: System.dll => 0xd89e9cf3334914ea => 55
	i64 15777549416145007739, ; 244: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 112
	i64 15810740023422282496, ; 245: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 126
	i64 15847085070278954535, ; 246: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 66
	i64 15852824340364052161, ; 247: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 21
	i64 15963349826457351533, ; 248: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 138
	i64 15982072519490392252, ; 249: Microsoft.AspNetCore.WebSockets.dll => 0xddcbba47a2c1d0bc => 30
	i64 16035518054986892682, ; 250: Prism.dll => 0xde899ab610db458a => 49
	i64 16046481083542319511, ; 251: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 41
	i64 16154507427712707110, ; 252: System => 0xe03056ea4e39aa26 => 55
	i64 16156430004425724367, ; 253: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xe0372b7d144211cf => 16
	i64 16321164108206115771, ; 254: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 39
	i64 16337011941688632206, ; 255: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 63
	i64 16343918515847859304, ; 256: Microsoft.Extensions.Features.dll => 0xe2d1434bdf0a8c68 => 36
	i64 16565028646146589191, ; 257: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 135
	i64 16605226748660468415, ; 258: Microsoft.AspNetCore.SignalR.Common => 0xe6719dbfe8b8cabf => 26
	i64 16621146507174665210, ; 259: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 82
	i64 16677317093839702854, ; 260: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 107
	i64 16822611501064131242, ; 261: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 131
	i64 16833383113903931215, ; 262: mscorlib => 0xe99c30c1484d7f4f => 46
	i64 17024911836938395553, ; 263: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 71
	i64 17031351772568316411, ; 264: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 105
	i64 17037200463775726619, ; 265: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 93
	i64 17118171214553292978, ; 266: System.Threading.Channels => 0xed8ff6060fc420b2 => 66
	i64 17126545051278881272, ; 267: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 44
	i64 17544493274320527064, ; 268: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 76
	i64 17571845317586269034, ; 269: Microsoft.AspNetCore.Connections.Abstractions.dll => 0xf3dbbc377ad7336a => 12
	i64 17636563193350668017, ; 270: Microsoft.AspNetCore.Http.Connections.Common => 0xf4c1a8c826653ef1 => 17
	i64 17704177640604968747, ; 271: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 101
	i64 17710060891934109755, ; 272: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 99
	i64 17838668724098252521, ; 273: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 52
	i64 17882897186074144999, ; 274: FormsViewGroup => 0xf82cd03e3ac830e7 => 4
	i64 17892495832318972303, ; 275: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 126
	i64 17911643751311784505, ; 276: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 44
	i64 17928294245072900555, ; 277: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 134
	i64 18116111925905154859, ; 278: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 75
	i64 18121036031235206392, ; 279: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 105
	i64 18129453464017766560, ; 280: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 137
	i64 18305135509493619199, ; 281: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 106
	i64 18380184030268848184, ; 282: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 118
	i64 18434045720645380019 ; 283: Prism.Forms.dll => 0xffd2e2ea4860a7b3 => 50
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [284 x i32] [
	i32 89, i32 43, i32 45, i32 38, i32 18, i32 79, i32 111, i32 112, ; 0..7
	i32 41, i32 98, i32 132, i32 92, i32 88, i32 5, i32 130, i32 125, ; 8..15
	i32 141, i32 127, i32 74, i32 3, i32 72, i32 100, i32 93, i32 58, ; 16..23
	i32 47, i32 57, i32 73, i32 111, i32 32, i32 70, i32 99, i32 121, ; 24..31
	i32 138, i32 47, i32 8, i32 104, i32 77, i32 88, i32 136, i32 96, ; 32..39
	i32 64, i32 61, i32 83, i32 116, i32 62, i32 69, i32 67, i32 46, ; 40..47
	i32 35, i32 108, i32 61, i32 0, i32 123, i32 127, i32 11, i32 38, ; 48..55
	i32 10, i32 95, i32 71, i32 60, i32 51, i32 51, i32 37, i32 114, ; 56..63
	i32 113, i32 59, i32 62, i32 33, i32 1, i32 110, i32 89, i32 26, ; 64..71
	i32 40, i32 57, i32 9, i32 20, i32 13, i32 139, i32 137, i32 139, ; 72..79
	i32 118, i32 76, i32 69, i32 113, i32 30, i32 31, i32 124, i32 19, ; 80..87
	i32 122, i32 102, i32 103, i32 116, i32 115, i32 82, i32 53, i32 23, ; 88..95
	i32 120, i32 80, i32 108, i32 97, i32 17, i32 25, i32 6, i32 125, ; 96..103
	i32 4, i32 27, i32 65, i32 140, i32 98, i32 96, i32 77, i32 86, ; 104..111
	i32 42, i32 136, i32 92, i32 48, i32 12, i32 68, i32 18, i32 60, ; 112..119
	i32 14, i32 29, i32 94, i32 91, i32 19, i32 68, i32 123, i32 122, ; 120..127
	i32 2, i32 129, i32 11, i32 72, i32 135, i32 95, i32 54, i32 131, ; 128..135
	i32 7, i32 29, i32 81, i32 107, i32 115, i32 14, i32 7, i32 106, ; 136..143
	i32 27, i32 134, i32 54, i32 8, i32 28, i32 0, i32 120, i32 73, ; 144..151
	i32 13, i32 59, i32 83, i32 103, i32 45, i32 80, i32 130, i32 23, ; 152..159
	i32 141, i32 2, i32 28, i32 36, i32 86, i32 15, i32 140, i32 114, ; 160..167
	i32 58, i32 84, i32 32, i32 22, i32 5, i32 74, i32 39, i32 53, ; 168..175
	i32 67, i32 21, i32 121, i32 119, i32 42, i32 85, i32 6, i32 109, ; 176..183
	i32 56, i32 119, i32 40, i32 94, i32 70, i32 1, i32 91, i32 52, ; 184..191
	i32 117, i32 65, i32 56, i32 9, i32 90, i32 101, i32 87, i32 78, ; 192..199
	i32 133, i32 79, i32 43, i32 50, i32 132, i32 49, i32 16, i32 22, ; 200..207
	i32 3, i32 117, i32 81, i32 15, i32 24, i32 128, i32 75, i32 37, ; 208..215
	i32 110, i32 129, i32 31, i32 90, i32 124, i32 78, i32 104, i32 109, ; 216..223
	i32 97, i32 64, i32 25, i32 102, i32 35, i32 128, i32 24, i32 48, ; 224..231
	i32 85, i32 63, i32 34, i32 133, i32 87, i32 33, i32 84, i32 34, ; 232..239
	i32 20, i32 100, i32 10, i32 55, i32 112, i32 126, i32 66, i32 21, ; 240..247
	i32 138, i32 30, i32 49, i32 41, i32 55, i32 16, i32 39, i32 63, ; 248..255
	i32 36, i32 135, i32 26, i32 82, i32 107, i32 131, i32 46, i32 71, ; 256..263
	i32 105, i32 93, i32 66, i32 44, i32 76, i32 12, i32 17, i32 101, ; 264..271
	i32 99, i32 52, i32 4, i32 126, i32 44, i32 134, i32 75, i32 105, ; 272..279
	i32 137, i32 106, i32 118, i32 50 ; 280..283
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
