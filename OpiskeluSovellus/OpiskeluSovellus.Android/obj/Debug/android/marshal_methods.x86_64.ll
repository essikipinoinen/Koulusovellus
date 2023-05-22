; ModuleID = 'obj/Debug/android/marshal_methods.x86_64.ll'
source_filename = "obj/Debug/android/marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [408 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 143
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 77
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 79
	i64 160518225272466977, ; 3: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 72
	i64 165455458108447059, ; 4: Microsoft.AspNetCore.Http.Connections.dll => 0x24bd0dcceb41953 => 46
	i64 195258733703605363, ; 5: System.Net.Http.Formatting => 0x2b5b2c8a5b22c73 => 110
	i64 196720943101637631, ; 6: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 195
	i64 197751585713159992, ; 7: ICSharpCode.SharpZipLib.dll => 0x2be8e04fc33ff38 => 32
	i64 206513827429413929, ; 8: Mono.Cecil => 0x2ddaf3b5d22f429 => 80
	i64 210515253464952879, ; 9: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 133
	i64 229794953483747371, ; 10: System.ValueTuple.dll => 0x330654aed93802b => 194
	i64 232391251801502327, ; 11: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 165
	i64 295915112840604065, ; 12: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 166
	i64 535107122908063503, ; 13: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 75
	i64 560278790331054453, ; 14: System.Reflection.Primitives => 0x7c6829760de3975 => 13
	i64 634256334200181332, ; 15: Microsoft.CodeAnalysis.CSharp.dll => 0x8cd54c6888b1254 => 61
	i64 634308326490598313, ; 16: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 152
	i64 702024105029695270, ; 17: System.Drawing.Common => 0x9be17343c0e7726 => 28
	i64 720058930071658100, ; 18: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 146
	i64 750875890346172408, ; 19: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 25
	i64 872800313462103108, ; 20: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 142
	i64 875677659902526502, ; 21: IdentityModel.dll => 0xc270831303c4426 => 33
	i64 940822596282819491, ; 22: System.Transactions => 0xd0e792aa81923a3 => 185
	i64 996343623809489702, ; 23: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 180
	i64 1000557547492888992, ; 24: Mono.Security.dll => 0xde2b1c9cba651a0 => 203
	i64 1010599046655515943, ; 25: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 13
	i64 1120440138749646132, ; 26: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 182
	i64 1301626418029409250, ; 27: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 20
	i64 1315114680217950157, ; 28: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 128
	i64 1425944114962822056, ; 29: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 29
	i64 1537168428375924959, ; 30: System.Threading.Thread.dll => 0x15551e8a954ae0df => 25
	i64 1624659445732251991, ; 31: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 126
	i64 1628611045998245443, ; 32: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 154
	i64 1636321030536304333, ; 33: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 147
	i64 1653644849046973826, ; 34: System.Net.WebSockets.WebSocketProtocol => 0x16f2ed3a94196d82 => 111
	i64 1687264043965568749, ; 35: Syncfusion.SfSchedule.XForms.dll => 0x176a5db55edb56ed => 95
	i64 1731380447121279447, ; 36: Newtonsoft.Json => 0x18071957e9b889d7 => 86
	i64 1743969030606105336, ; 37: System.Memory.dll => 0x1833d297e88f2af8 => 108
	i64 1795316252682057001, ; 38: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 127
	i64 1836611346387731153, ; 39: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 165
	i64 1865037103900624886, ; 40: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 60
	i64 1875917498431009007, ; 41: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 124
	i64 1972384582241139858, ; 42: Microsoft.CodeAnalysis.CSharp => 0x1b5f5153d0f0bc92 => 61
	i64 1972385128188460614, ; 43: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 200
	i64 1981742497975770890, ; 44: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 153
	i64 1986553961460820075, ; 45: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 175
	i64 2040001226662520565, ; 46: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 191
	i64 2076847052340733488, ; 47: Syncfusion.Core.XForms => 0x1cd27163f7962630 => 92
	i64 2133195048986300728, ; 48: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 86
	i64 2134499330197294177, ; 49: Json.Net => 0x1d9f43d4edb80c61 => 36
	i64 2136356949452311481, ; 50: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 158
	i64 2165725771938924357, ; 51: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 131
	i64 2262844636196693701, ; 52: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 142
	i64 2284400282711631002, ; 53: System.Web.Services => 0x1fb3d1f42fd4249a => 189
	i64 2287834202362508563, ; 54: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 4
	i64 2315304989185124968, ; 55: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 12
	i64 2329709569556905518, ; 56: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 150
	i64 2335503487726329082, ; 57: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 118
	i64 2337758774805907496, ; 58: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 115
	i64 2469392061734276978, ; 59: Syncfusion.Core.XForms.Android.dll => 0x22450aff2ad74f72 => 91
	i64 2470498323731680442, ; 60: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 137
	i64 2479423007379663237, ; 61: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 170
	i64 2497223385847772520, ; 62: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 63: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 123
	i64 2592350477072141967, ; 64: System.Xml.dll => 0x23f9e10627330e8f => 121
	i64 2624866290265602282, ; 65: mscorlib.dll => 0x246d65fbde2db8ea => 84
	i64 2631128381086276619, ; 66: Mono.Cecil.Rocks => 0x2483a55281189c0b => 83
	i64 2656907746661064104, ; 67: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 69
	i64 2694427813909235223, ; 68: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 162
	i64 2704260652175460545, ; 69: System.Composition.Convention => 0x258776bc40fc08c1 => 99
	i64 2783046991838674048, ; 70: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 115
	i64 2844780895111324988, ; 71: System.Composition.TypedParts => 0x277ab126dceda53c => 102
	i64 2903877519962373267, ; 72: OpiskeluSovellus.Android.dll => 0x284ca53810997c93 => 0
	i64 2960931600190307745, ; 73: Xamarin.Forms.Core => 0x2917579a49927da1 => 177
	i64 3017704767998173186, ; 74: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 182
	i64 3021884968805928991, ; 75: Microsoft.AspNetCore.Authorization.Policy => 0x29efe45e55c5101f => 39
	i64 3168817962471953758, ; 76: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 72
	i64 3266690593535380875, ; 77: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 38
	i64 3289520064315143713, ; 78: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 149
	i64 3303437397778967116, ; 79: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 125
	i64 3311221304742556517, ; 80: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 113
	i64 3319652371029784140, ; 81: Prism.NavigationEx => 0x2e11c63e4103764c => 90
	i64 3325875462027654285, ; 82: System.Runtime.Numerics => 0x2e27e21c8958b48d => 14
	i64 3328954407173783270, ; 83: Prism.NavigationEx.dll => 0x2e32d26551107ee6 => 90
	i64 3396143930648122816, ; 84: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 71
	i64 3493805808809882663, ; 85: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 168
	i64 3522470458906976663, ; 86: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 167
	i64 3531994851595924923, ; 87: System.Numerics => 0x31042a9aade235bb => 112
	i64 3571415421602489686, ; 88: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3600082904159680844, ; 89: Mono.Cecil.Mdb => 0x31f61053c864f94c => 81
	i64 3619326080013584352, ; 90: Microsoft.CodeAnalysis.VisualBasic.dll => 0x323a6de4cd8447e0 => 64
	i64 3638003163729360188, ; 91: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 67
	i64 3647754201059316852, ; 92: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 18
	i64 3716579019761409177, ; 93: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 94: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 164
	i64 3772598417116884899, ; 95: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 143
	i64 3783726507060260521, ; 96: Microsoft.AspNetCore.SignalR.Common.dll => 0x34827f360c8e6ea9 => 54
	i64 3869221888984012293, ; 97: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 74
	i64 3869649043256705283, ; 98: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 15
	i64 3966267475168208030, ; 99: System.Memory => 0x370b03412596249e => 108
	i64 3986466921713458903, ; 100: System.Composition.Hosting => 0x3752c68b49935ed7 => 100
	i64 4187479170553454871, ; 101: System.Linq.Expressions => 0x3a1cea1e912fa117 => 195
	i64 4202567570116092282, ; 102: Newtonsoft.Json.Bson => 0x3a5284f05958a17a => 85
	i64 4225924121207573736, ; 103: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 37
	i64 4243591448627561453, ; 104: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 48
	i64 4250192876909962317, ; 105: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 41
	i64 4282138915307457788, ; 106: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 192
	i64 4525561845656915374, ; 107: System.ServiceModel.Internals => 0x3ece06856b710dae => 190
	i64 4533124835995628778, ; 108: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 192
	i64 4636684751163556186, ; 109: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 172
	i64 4782108999019072045, ; 110: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 130
	i64 4794310189461587505, ; 111: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 123
	i64 4795410492532947900, ; 112: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 167
	i64 4832426131961301651, ; 113: Microsoft.AspNetCore.WebSockets => 0x431039f6b6de4a93 => 58
	i64 5081566143765835342, ; 114: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 16
	i64 5099468265966638712, ; 115: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 16
	i64 5112836352847824253, ; 116: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 59
	i64 5142919913060024034, ; 117: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 179
	i64 5177565741364132164, ; 118: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 47
	i64 5203618020066742981, ; 119: Xamarin.Essentials => 0x4836f704f0e652c5 => 176
	i64 5205316157927637098, ; 120: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 156
	i64 5244375036463807528, ; 121: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 24
	i64 5348796042099802469, ; 122: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 157
	i64 5375264076663995773, ; 123: Xamarin.Forms.PancakeView => 0x4a98c632c779bd7d => 178
	i64 5376510917114486089, ; 124: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 170
	i64 5408338804355907810, ; 125: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 169
	i64 5446034149219586269, ; 126: System.Diagnostics.Debug => 0x4b94333452e150dd => 2
	i64 5451019430259338467, ; 127: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 136
	i64 5507995362134886206, ; 128: System.Core.dll => 0x4c705499688c873e => 103
	i64 5527431512186326818, ; 129: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 17
	i64 5591791169662171124, ; 130: System.Linq.Parallel => 0x4d9a087135e137f4 => 27
	i64 5593115988096097561, ; 131: Microsoft.AspNetCore.Routing.dll => 0x4d9ebd5b8a069d19 => 51
	i64 5650097808083101034, ; 132: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 200
	i64 5692067934154308417, ; 133: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 174
	i64 5757522595884336624, ; 134: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 134
	i64 5814345312393086621, ; 135: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 162
	i64 5896680224035167651, ; 136: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 151
	i64 5984759512290286505, ; 137: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 19
	i64 6014447449592687183, ; 138: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x53779c16e939ea4f => 45
	i64 6034224070161570862, ; 139: Microsoft.AspNetCore.SignalR.Client.dll => 0x53bdded235179c2e => 53
	i64 6046211982703393097, ; 140: IdentityModel.OidcClient.dll => 0x53e875c399bef949 => 34
	i64 6085203216496545422, ; 141: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 180
	i64 6086316965293125504, ; 142: FormsViewGroup.dll => 0x5476f10882baef80 => 31
	i64 6100239589957982951, ; 143: Microsoft.AspNetCore.SignalR.Core => 0x54a867962c385ae7 => 55
	i64 6222399776351216807, ; 144: System.Text.Json.dll => 0x565a67a0ffe264a7 => 119
	i64 6284145129771520194, ; 145: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 193
	i64 6319713645133255417, ; 146: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 152
	i64 6401687960814735282, ; 147: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 150
	i64 6504860066809920875, ; 148: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 131
	i64 6548213210057960872, ; 149: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 140
	i64 6560151584539558821, ; 150: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 76
	i64 6591024623626361694, ; 151: System.Web.Services.dll => 0x5b7805f9751a1b5e => 189
	i64 6617685658146568858, ; 152: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 202
	i64 6659513131007730089, ; 153: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 146
	i64 6776786551522670705, ; 154: OpiskeluSovellus => 0x5e0bfb76b2273871 => 87
	i64 6783125919820072783, ; 155: Microsoft.AspNetCore.Connections.Abstractions => 0x5e228115e59ec74f => 40
	i64 6800157191326250309, ; 156: Microsoft.CodeAnalysis.CSharp.Workspaces => 0x5e5f02efcdd1b545 => 62
	i64 6814185388980153342, ; 157: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 11
	i64 6876862101832370452, ; 158: System.Xml.Linq => 0x5f6f85a57d108914 => 122
	i64 6892424314611037586, ; 159: Microsoft.AspNetCore.Http.Connections => 0x5fa6cf6581a7f592 => 46
	i64 6894844156784520562, ; 160: System.Numerics.Vectors => 0x5faf683aead1ad72 => 113
	i64 6911788284027924527, ; 161: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 42
	i64 7017588408768804231, ; 162: Microsoft.AspNetCore.SignalR.Protocols.Json => 0x61637b7a1c903587 => 57
	i64 7026608356547306326, ; 163: Syncfusion.Core.XForms.dll => 0x618387125bcb2356 => 92
	i64 7036436454368433159, ; 164: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 148
	i64 7060896174307865760, ; 165: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 23
	i64 7103753931438454322, ; 166: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 145
	i64 7112547816752919026, ; 167: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 12
	i64 7188876148444261747, ; 168: System.Composition.AttributedModel.dll => 0x63c404c4ca4c6d73 => 98
	i64 7270811800166795866, ; 169: System.Linq => 0x64e71ccf51a90a5a => 196
	i64 7331765743953618630, ; 170: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 47
	i64 7338192458477945005, ; 171: System.Reflection => 0x65d67f295d0740ad => 7
	i64 7488575175965059935, ; 172: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 122
	i64 7489048572193775167, ; 173: System.ObjectModel => 0x67ee71ff6b419e3f => 26
	i64 7635363394907363464, ; 174: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 177
	i64 7637365915383206639, ; 175: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 176
	i64 7654504624184590948, ; 176: System.Net.Http => 0x6a3a4366801b8264 => 109
	i64 7820441508502274321, ; 177: System.Data => 0x6c87ca1e14ff8111 => 184
	i64 7824823231109474690, ; 178: Microsoft.AspNetCore.Authorization.Policy.dll => 0x6c975b4560812982 => 39
	i64 7836164640616011524, ; 179: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 126
	i64 7864580123761697018, ; 180: Syncfusion.SfSchedule.XForms => 0x6d2499f44869e0fa => 95
	i64 8044118961405839122, ; 181: System.ComponentModel.Composition => 0x6fa2739369944712 => 188
	i64 8064050204834738623, ; 182: System.Collections.dll => 0x6fe942efa61731bf => 3
	i64 8083354569033831015, ; 183: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 149
	i64 8087206902342787202, ; 184: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 104
	i64 8103644804370223335, ; 185: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 186
	i64 8113615946733131500, ; 186: System.Reflection.Extensions => 0x70995ab73cf916ec => 22
	i64 8167236081217502503, ; 187: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 35
	i64 8185542183669246576, ; 188: System.Collections => 0x7198e33f4794aa70 => 3
	i64 8243855692487634729, ; 189: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x72680f13124eaf29 => 57
	i64 8290740647658429042, ; 190: System.Runtime.Extensions => 0x730ea0b15c929a72 => 10
	i64 8329843434826495442, ; 191: ICSharpCode.SharpZipLib => 0x73998c787773f5d2 => 32
	i64 8398329775253868912, ; 192: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 135
	i64 8400357532724379117, ; 193: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 161
	i64 8443098594388592373, ; 194: Syncfusion.SfSchedule.XForms.Android => 0x752be9702a21c6f5 => 94
	i64 8518412311883997971, ; 195: System.Collections.Immutable => 0x76377add7c28e313 => 97
	i64 8601935802264776013, ; 196: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 169
	i64 8611142787134128904, ; 197: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 42
	i64 8626175481042262068, ; 198: Java.Interop => 0x77b654e585b55834 => 35
	i64 8639588376636138208, ; 199: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 160
	i64 8645284293310146700, ; 200: Microsoft.AspNetCore.SignalR.Core.dll => 0x77fa38429503e88c => 55
	i64 8684531736582871431, ; 201: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 187
	i64 8725526185868997716, ; 202: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 104
	i64 8736225086734201289, ; 203: Mono.Cecil.Pdb => 0x793d4e6e0ca5f1c9 => 82
	i64 8736992242196140300, ; 204: Json.Net.dll => 0x794008275971d10c => 36
	i64 8941376889969657626, ; 205: System.Xml.XDocument => 0x7c1626e87187471a => 11
	i64 9078292251399104661, ; 206: Microsoft.AspNetCore.SignalR.dll => 0x7dfc92b42bd32895 => 56
	i64 9253436536371915686, ; 207: OpiskeluSovellus.Android => 0x806acf80c611aba6 => 0
	i64 9258038534689720297, ; 208: Microsoft.CodeAnalysis.Workspaces => 0x807b28ff010f07e9 => 66
	i64 9312692141327339315, ; 209: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 174
	i64 9324707631942237306, ; 210: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 127
	i64 9413000421947348542, ; 211: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 41
	i64 9468215723722196442, ; 212: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 201
	i64 9584643793929893533, ; 213: System.IO.dll => 0x85037ebfbbd7f69d => 197
	i64 9659729154652888475, ; 214: System.Text.RegularExpressions => 0x860e407c9991dd9b => 199
	i64 9662334977499516867, ; 215: System.Numerics.dll => 0x8617827802b0cfc3 => 112
	i64 9678050649315576968, ; 216: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 137
	i64 9711637524876806384, ; 217: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 157
	i64 9720196544438918509, ; 218: Microsoft.CodeAnalysis.VisualBasic.Workspaces.dll => 0x86e51341e242dd6d => 65
	i64 9808709177481450983, ; 219: Mono.Android.dll => 0x881f890734e555e7 => 79
	i64 9825649861376906464, ; 220: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 134
	i64 9834056768316610435, ; 221: System.Transactions.dll => 0x8879968718899783 => 185
	i64 9836529246295212050, ; 222: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 114
	i64 9938556199016768930, ; 223: Microsoft.AspNetCore.Routing => 0x89ecd834cea6a5a2 => 51
	i64 9994308163963284983, ; 224: Newtonsoft.Json.Bson.dll => 0x8ab2ea52b0d16df7 => 85
	i64 9998632235833408227, ; 225: Mono.Security => 0x8ac2470b209ebae3 => 203
	i64 10038780035334861115, ; 226: System.Net.Http.dll => 0x8b50e941206af13b => 109
	i64 10105485790837105934, ; 227: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 23
	i64 10106207375072889257, ; 228: Microsoft.AspNetCore.SignalR => 0x8c40761009a709a9 => 56
	i64 10226498071391929720, ; 229: Microsoft.Extensions.Features => 0x8debd1d049888578 => 70
	i64 10229024438826829339, ; 230: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 140
	i64 10243523786148452761, ; 231: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 43
	i64 10267848293207093350, ; 232: DocoptNet.dll => 0x8e7eb99f0c35b066 => 30
	i64 10298850951283880123, ; 233: Mono.Cecil.dll => 0x8eecde5fe1f830bb => 80
	i64 10360651442923773544, ; 234: System.Text.Encoding => 0x8fc86d98211c1e68 => 6
	i64 10364469296367737616, ; 235: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 193
	i64 10376576884623852283, ; 236: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 168
	i64 10390244938473477758, ; 237: System.Net.WebSockets.WebSocketProtocol.dll => 0x903190b8bf03167e => 111
	i64 10430153318873392755, ; 238: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 138
	i64 10447083246144586668, ; 239: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 60
	i64 10448061532586656644, ; 240: System.Composition.Convention.dll => 0x90fef89b91404384 => 99
	i64 10458986597687352396, ; 241: Microsoft.AspNetCore.Routing.Abstractions => 0x9125c8e581b9dc4c => 50
	i64 10566960649245365243, ; 242: System.Globalization.dll => 0x92a562b96dcd13fb => 8
	i64 10595762989148858956, ; 243: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 201
	i64 10634102643060048396, ; 244: IdentityModel => 0x9393ec0310a3020c => 33
	i64 10714184849103829812, ; 245: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 10
	i64 10847732767863316357, ; 246: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 128
	i64 11002576679268595294, ; 247: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 73
	i64 11023048688141570732, ; 248: System.Core => 0x98f9bc61168392ac => 103
	i64 11037814507248023548, ; 249: System.Xml => 0x992e31d0412bf7fc => 121
	i64 11050168729868392624, ; 250: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 49
	i64 11122995063473561350, ; 251: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 175
	i64 11162124722117608902, ; 252: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 173
	i64 11226290749488709958, ; 253: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 76
	i64 11340910727871153756, ; 254: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 139
	i64 11380782361707310188, ; 255: IdentityModel.OidcClient => 0x9df0a9428f986c6c => 34
	i64 11392833485892708388, ; 256: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 163
	i64 11485890710487134646, ; 257: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 198
	i64 11513602507638267977, ; 258: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 107
	i64 11529969570048099689, ; 259: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 173
	i64 11530571088791430846, ; 260: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 74
	i64 11564861549255168062, ; 261: Microsoft.CodeAnalysis.dll => 0xa07ea44e47ed903e => 63
	i64 11578238080964724296, ; 262: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 148
	i64 11580057168383206117, ; 263: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 124
	i64 11597940890313164233, ; 264: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 265: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 145
	i64 11707554492040141440, ; 266: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 27
	i64 11743665907891708234, ; 267: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 5
	i64 11851835839753101194, ; 268: Microsoft.CodeAnalysis.CSharp.Workspaces.dll => 0xa47a2de70cba1f8a => 62
	i64 11997281068246925203, ; 269: Microsoft.CodeAnalysis.VisualBasic.Workspaces => 0xa67ee79137607f93 => 65
	i64 12096697103934194533, ; 270: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 24
	i64 12102847907131387746, ; 271: System.Buffers => 0xa7f5f40c43256f62 => 96
	i64 12123043025855404482, ; 272: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 22
	i64 12137774235383566651, ; 273: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 171
	i64 12145679461940342714, ; 274: System.Text.Json => 0xa88e1f1ebcb62fba => 119
	i64 12269460666702402136, ; 275: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 97
	i64 12313367145828839434, ; 276: System.IO.Pipelines => 0xaae1de2e1c17f00a => 107
	i64 12441092376399691269, ; 277: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 37
	i64 12451044538927396471, ; 278: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 144
	i64 12466513435562512481, ; 279: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 155
	i64 12487638416075308985, ; 280: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 141
	i64 12538491095302438457, ; 281: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 132
	i64 12550732019250633519, ; 282: System.IO.Compression => 0xae2d28465e8e1b2f => 106
	i64 12642812704847608890, ; 283: Mono.Cecil.Pdb.dll => 0xaf744b2baa3cbc3a => 82
	i64 12700543734426720211, ; 284: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 133
	i64 12708238894395270091, ; 285: System.IO => 0xb05cbbf17d3ba3cb => 197
	i64 12708922737231849740, ; 286: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 21
	i64 12843321153144804894, ; 287: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 77
	i64 12953969983053113793, ; 288: Prism.Forms => 0xb3c5bf1106f429c1 => 89
	i64 12963446364377008305, ; 289: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 28
	i64 12991459499837607210, ; 290: Microsoft.CodeAnalysis => 0xb44aef9559b1cd2a => 63
	i64 13126023683090012938, ; 291: System.Composition.TypedParts.dll => 0xb62900febff1db0a => 102
	i64 13196197655982686080, ; 292: Prism => 0xb7224fda06b0bf80 => 88
	i64 13295219713260136977, ; 293: Microsoft.AspNetCore.Http.Connections.Client => 0xb8821be35ba42a11 => 44
	i64 13308002692117796025, ; 294: Microsoft.AspNetCore.Routing.Abstractions.dll => 0xb8af85f08d9f94b9 => 50
	i64 13370592475155966277, ; 295: System.Runtime.Serialization => 0xb98de304062ea945 => 29
	i64 13401370062847626945, ; 296: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 171
	i64 13404347523447273790, ; 297: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 135
	i64 13404984788036896679, ; 298: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 43
	i64 13428779960367410341, ; 299: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0xba5c9c39a8956ca5 => 52
	i64 13454009404024712428, ; 300: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 183
	i64 13491513212026656886, ; 301: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 129
	i64 13502641473732064860, ; 302: System.Composition.AttributedModel => 0xbb6304e15b41b65c => 98
	i64 13550417756503177631, ; 303: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 71
	i64 13572454107664307259, ; 304: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 164
	i64 13622732128915678507, ; 305: Syncfusion.Core.XForms.Android => 0xbd0daab1e651e52b => 91
	i64 13647894001087880694, ; 306: System.Data.dll => 0xbd670f48cb071df6 => 184
	i64 13702626353344114072, ; 307: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 15
	i64 13864745339496195545, ; 308: Microsoft.CodeAnalysis.Workspaces.dll => 0xc069786d7dec65d9 => 66
	i64 13921917134693230900, ; 309: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 59
	i64 13959074834287824816, ; 310: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 144
	i64 13967638549803255703, ; 311: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 179
	i64 13970307180132182141, ; 312: Syncfusion.Licensing => 0xc1e0805ccade287d => 93
	i64 14124974489674258913, ; 313: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 132
	i64 14125464355221830302, ; 314: System.Threading.dll => 0xc407bafdbc707a9e => 9
	i64 14172845254133543601, ; 315: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 158
	i64 14220608275227875801, ; 316: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 20
	i64 14254574811015963973, ; 317: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 21
	i64 14261073672896646636, ; 318: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 163
	i64 14327695147300244862, ; 319: System.Reflection.dll => 0xc6d632d338eb4d7e => 7
	i64 14458992049617552198, ; 320: Mono.Cecil.Rocks.dll => 0xc8a8a8a97fa6c346 => 83
	i64 14486659737292545672, ; 321: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 151
	i64 14538127318538747197, ; 322: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 93
	i64 14551742072151931844, ; 323: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 118
	i64 14561513370130550166, ; 324: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 19
	i64 14604329626201521481, ; 325: Microsoft.AspNetCore.SignalR.Client => 0xcaad006b00747d49 => 53
	i64 14644440854989303794, ; 326: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 156
	i64 14669215534098758659, ; 327: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 69
	i64 14792063746108907174, ; 328: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 183
	i64 14809184851036126845, ; 329: Microsoft.AspNetCore.SignalR.Client.Core => 0xcd84cb28db1abe7d => 52
	i64 14843512117609491843, ; 330: OpiskeluSovellus.dll => 0xcdfebfa06d51ed83 => 87
	i64 14852515768018889994, ; 331: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 139
	i64 14912225920358050525, ; 332: System.Security.Principal.Windows => 0xcef2de7759506add => 117
	i64 14935719434541007538, ; 333: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 202
	i64 14954917835170835695, ; 334: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 68
	i64 14987728460634540364, ; 335: System.IO.Compression.dll => 0xcfff1ba06622494c => 106
	i64 14988210264188246988, ; 336: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 141
	i64 15076659072870671916, ; 337: System.ObjectModel.dll => 0xd13b0d8c1620662c => 26
	i64 15133485256822086103, ; 338: System.Linq.dll => 0xd204f0a9127dd9d7 => 196
	i64 15227001540531775957, ; 339: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 67
	i64 15300862763834473199, ; 340: System.Composition.Hosting.dll => 0xd457959dc35afaef => 100
	i64 15352427450275134006, ; 341: System.Composition.Runtime.dll => 0xd50ec76ce59afa36 => 101
	i64 15370334346939861994, ; 342: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 138
	i64 15391712275433856905, ; 343: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 68
	i64 15526743539506359484, ; 344: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 6
	i64 15565247197164990907, ; 345: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 48
	i64 15582737692548360875, ; 346: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 154
	i64 15592226634512578529, ; 347: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 38
	i64 15609085926864131306, ; 348: System.dll => 0xd89e9cf3334914ea => 105
	i64 15661133872274321916, ; 349: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 18
	i64 15755368083429170162, ; 350: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 17
	i64 15777549416145007739, ; 351: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 166
	i64 15810740023422282496, ; 352: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 181
	i64 15817206913877585035, ; 353: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 5
	i64 15847085070278954535, ; 354: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 120
	i64 15852824340364052161, ; 355: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 49
	i64 15963349826457351533, ; 356: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 191
	i64 15982072519490392252, ; 357: Microsoft.AspNetCore.WebSockets.dll => 0xddcbba47a2c1d0bc => 58
	i64 16035518054986892682, ; 358: Prism.dll => 0xde899ab610db458a => 88
	i64 16046481083542319511, ; 359: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 75
	i64 16154507427712707110, ; 360: System => 0xe03056ea4e39aa26 => 105
	i64 16156430004425724367, ; 361: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xe0372b7d144211cf => 44
	i64 16321164108206115771, ; 362: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 73
	i64 16337011941688632206, ; 363: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 117
	i64 16343918515847859304, ; 364: Microsoft.Extensions.Features.dll => 0xe2d1434bdf0a8c68 => 70
	i64 16565028646146589191, ; 365: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 188
	i64 16605226748660468415, ; 366: Microsoft.AspNetCore.SignalR.Common => 0xe6719dbfe8b8cabf => 54
	i64 16621146507174665210, ; 367: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 136
	i64 16643194905613199096, ; 368: System.Composition.Runtime => 0xe6f8819654aa66f8 => 101
	i64 16677317093839702854, ; 369: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 161
	i64 16702652415771857902, ; 370: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 194
	i64 16822611501064131242, ; 371: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 186
	i64 16833383113903931215, ; 372: mscorlib => 0xe99c30c1484d7f4f => 84
	i64 16890310621557459193, ; 373: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 199
	i64 17024911836938395553, ; 374: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 125
	i64 17031351772568316411, ; 375: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 159
	i64 17037200463775726619, ; 376: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 147
	i64 17118171214553292978, ; 377: System.Threading.Channels => 0xed8ff6060fc420b2 => 120
	i64 17126545051278881272, ; 378: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 78
	i64 17469203935578174314, ; 379: DocoptNet => 0xf26f146c70fe336a => 30
	i64 17544493274320527064, ; 380: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 130
	i64 17547642265084393538, ; 381: Microsoft.CodeAnalysis.VisualBasic => 0xf385bfab2ffc7842 => 64
	i64 17571845317586269034, ; 382: Microsoft.AspNetCore.Connections.Abstractions.dll => 0xf3dbbc377ad7336a => 40
	i64 17627500474728259406, ; 383: System.Globalization => 0xf4a176498a351f4e => 8
	i64 17636563193350668017, ; 384: Microsoft.AspNetCore.Http.Connections.Common => 0xf4c1a8c826653ef1 => 45
	i64 17685921127322830888, ; 385: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 2
	i64 17704177640604968747, ; 386: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 155
	i64 17710060891934109755, ; 387: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 153
	i64 17712670374920797664, ; 388: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 198
	i64 17727188866493996799, ; 389: System.Net.Http.Formatting.dll => 0xf603a059f5a25eff => 110
	i64 17777860260071588075, ; 390: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 14
	i64 17827832363535584534, ; 391: Xamarin.Forms.PancakeView.dll => 0xf7692f1427c04d16 => 178
	i64 17838668724098252521, ; 392: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 96
	i64 17882897186074144999, ; 393: FormsViewGroup => 0xf82cd03e3ac830e7 => 31
	i64 17892495832318972303, ; 394: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 181
	i64 17911643751311784505, ; 395: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 78
	i64 17928294245072900555, ; 396: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 187
	i64 18025913125965088385, ; 397: System.Threading => 0xfa28e87b91334681 => 9
	i64 18116111925905154859, ; 398: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 129
	i64 18121036031235206392, ; 399: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 159
	i64 18129453464017766560, ; 400: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 190
	i64 18245806341561545090, ; 401: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 4
	i64 18305135509493619199, ; 402: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 160
	i64 18305967065812200853, ; 403: Syncfusion.SfSchedule.XForms.Android.dll => 0xfe0bdc0ea3bc6d95 => 94
	i64 18347869166072228731, ; 404: Mono.Cecil.Mdb.dll => 0xfea0b9cb9d13eb7b => 81
	i64 18380184030268848184, ; 405: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 172
	i64 18434045720645380019, ; 406: Prism.Forms.dll => 0xffd2e2ea4860a7b3 => 89
	i64 18439108438687598470 ; 407: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 114
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [408 x i32] [
	i32 143, i32 77, i32 79, i32 72, i32 46, i32 110, i32 195, i32 32, ; 0..7
	i32 80, i32 133, i32 194, i32 165, i32 166, i32 75, i32 13, i32 61, ; 8..15
	i32 152, i32 28, i32 146, i32 25, i32 142, i32 33, i32 185, i32 180, ; 16..23
	i32 203, i32 13, i32 182, i32 20, i32 128, i32 29, i32 25, i32 126, ; 24..31
	i32 154, i32 147, i32 111, i32 95, i32 86, i32 108, i32 127, i32 165, ; 32..39
	i32 60, i32 124, i32 61, i32 200, i32 153, i32 175, i32 191, i32 92, ; 40..47
	i32 86, i32 36, i32 158, i32 131, i32 142, i32 189, i32 4, i32 12, ; 48..55
	i32 150, i32 118, i32 115, i32 91, i32 137, i32 170, i32 116, i32 123, ; 56..63
	i32 121, i32 84, i32 83, i32 69, i32 162, i32 99, i32 115, i32 102, ; 64..71
	i32 0, i32 177, i32 182, i32 39, i32 72, i32 38, i32 149, i32 125, ; 72..79
	i32 113, i32 90, i32 14, i32 90, i32 71, i32 168, i32 167, i32 112, ; 80..87
	i32 116, i32 81, i32 64, i32 67, i32 18, i32 1, i32 164, i32 143, ; 88..95
	i32 54, i32 74, i32 15, i32 108, i32 100, i32 195, i32 85, i32 37, ; 96..103
	i32 48, i32 41, i32 192, i32 190, i32 192, i32 172, i32 130, i32 123, ; 104..111
	i32 167, i32 58, i32 16, i32 16, i32 59, i32 179, i32 47, i32 176, ; 112..119
	i32 156, i32 24, i32 157, i32 178, i32 170, i32 169, i32 2, i32 136, ; 120..127
	i32 103, i32 17, i32 27, i32 51, i32 200, i32 174, i32 134, i32 162, ; 128..135
	i32 151, i32 19, i32 45, i32 53, i32 34, i32 180, i32 31, i32 55, ; 136..143
	i32 119, i32 193, i32 152, i32 150, i32 131, i32 140, i32 76, i32 189, ; 144..151
	i32 202, i32 146, i32 87, i32 40, i32 62, i32 11, i32 122, i32 46, ; 152..159
	i32 113, i32 42, i32 57, i32 92, i32 148, i32 23, i32 145, i32 12, ; 160..167
	i32 98, i32 196, i32 47, i32 7, i32 122, i32 26, i32 177, i32 176, ; 168..175
	i32 109, i32 184, i32 39, i32 126, i32 95, i32 188, i32 3, i32 149, ; 176..183
	i32 104, i32 186, i32 22, i32 35, i32 3, i32 57, i32 10, i32 32, ; 184..191
	i32 135, i32 161, i32 94, i32 97, i32 169, i32 42, i32 35, i32 160, ; 192..199
	i32 55, i32 187, i32 104, i32 82, i32 36, i32 11, i32 56, i32 0, ; 200..207
	i32 66, i32 174, i32 127, i32 41, i32 201, i32 197, i32 199, i32 112, ; 208..215
	i32 137, i32 157, i32 65, i32 79, i32 134, i32 185, i32 114, i32 51, ; 216..223
	i32 85, i32 203, i32 109, i32 23, i32 56, i32 70, i32 140, i32 43, ; 224..231
	i32 30, i32 80, i32 6, i32 193, i32 168, i32 111, i32 138, i32 60, ; 232..239
	i32 99, i32 50, i32 8, i32 201, i32 33, i32 10, i32 128, i32 73, ; 240..247
	i32 103, i32 121, i32 49, i32 175, i32 173, i32 76, i32 139, i32 34, ; 248..255
	i32 163, i32 198, i32 107, i32 173, i32 74, i32 63, i32 148, i32 124, ; 256..263
	i32 1, i32 145, i32 27, i32 5, i32 62, i32 65, i32 24, i32 96, ; 264..271
	i32 22, i32 171, i32 119, i32 97, i32 107, i32 37, i32 144, i32 155, ; 272..279
	i32 141, i32 132, i32 106, i32 82, i32 133, i32 197, i32 21, i32 77, ; 280..287
	i32 89, i32 28, i32 63, i32 102, i32 88, i32 44, i32 50, i32 29, ; 288..295
	i32 171, i32 135, i32 43, i32 52, i32 183, i32 129, i32 98, i32 71, ; 296..303
	i32 164, i32 91, i32 184, i32 15, i32 66, i32 59, i32 144, i32 179, ; 304..311
	i32 93, i32 132, i32 9, i32 158, i32 20, i32 21, i32 163, i32 7, ; 312..319
	i32 83, i32 151, i32 93, i32 118, i32 19, i32 53, i32 156, i32 69, ; 320..327
	i32 183, i32 52, i32 87, i32 139, i32 117, i32 202, i32 68, i32 106, ; 328..335
	i32 141, i32 26, i32 196, i32 67, i32 100, i32 101, i32 138, i32 68, ; 336..343
	i32 6, i32 48, i32 154, i32 38, i32 105, i32 18, i32 17, i32 166, ; 344..351
	i32 181, i32 5, i32 120, i32 49, i32 191, i32 58, i32 88, i32 75, ; 352..359
	i32 105, i32 44, i32 73, i32 117, i32 70, i32 188, i32 54, i32 136, ; 360..367
	i32 101, i32 161, i32 194, i32 186, i32 84, i32 199, i32 125, i32 159, ; 368..375
	i32 147, i32 120, i32 78, i32 30, i32 130, i32 64, i32 40, i32 8, ; 376..383
	i32 45, i32 2, i32 155, i32 153, i32 198, i32 110, i32 14, i32 178, ; 384..391
	i32 96, i32 31, i32 181, i32 78, i32 187, i32 9, i32 129, i32 159, ; 392..399
	i32 190, i32 4, i32 160, i32 94, i32 81, i32 172, i32 89, i32 114 ; 408..407
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
