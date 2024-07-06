; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [181 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [356 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 171
	i64 196720943101637631, ; 1: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 229794953483747371, ; 2: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 350667413455104241, ; 3: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 422779754995088667, ; 4: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 464346026994987652, ; 5: System.Reactive.dll => 0x671b04057e67284 => 176
	i64 560278790331054453, ; 6: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 649145001856603771, ; 7: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 750875890346172408, ; 8: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 799765834175365804, ; 9: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 940822596282819491, ; 10: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 11: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1010599046655515943, ; 12: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1268860745194512059, ; 13: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1301626418029409250, ; 14: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1404195534211153682, ; 15: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 16: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 17: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1492954217099365037, ; 18: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 19: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1537168428375924959, ; 20: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1651782184287836205, ; 21: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 22: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1682513316613008342, ; 23: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1731380447121279447, ; 24: Newtonsoft.Json => 0x18071957e9b889d7 => 175
	i64 1735388228521408345, ; 25: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 26: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 27: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1825687700144851180, ; 28: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1854145951182283680, ; 29: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1875417405349196092, ; 30: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1972385128188460614, ; 31: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 2040001226662520565, ; 32: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2062890601515140263, ; 33: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2080945842184875448, ; 34: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 35: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 36: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2133195048986300728, ; 37: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 175
	i64 2287834202362508563, ; 38: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 39: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2315304989185124968, ; 40: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2335503487726329082, ; 41: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 42: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2497223385847772520, ; 43: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2592350477072141967, ; 44: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2624866290265602282, ; 45: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 46: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2706075432581334785, ; 47: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2783046991838674048, ; 48: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2815524396660695947, ; 49: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 3017136373564924869, ; 50: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3106852385031680087, ; 51: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 52: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 53: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3281594302220646930, ; 54: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3311221304742556517, ; 55: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 56: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 57: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3437845325506641314, ; 58: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3508450208084372758, ; 59: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3531994851595924923, ; 60: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 61: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3571415421602489686, ; 62: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3647754201059316852, ; 63: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3716579019761409177, ; 64: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3869649043256705283, ; 65: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3919223565570527920, ; 66: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 67: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 68: System.Memory => 0x370b03412596249e => 62
	i64 4006972109285359177, ; 69: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 70: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4073500526318903918, ; 71: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4148881117810174540, ; 72: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 73: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 74: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 75: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 76: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4205801962323029395, ; 77: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 78: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4282138915307457788, ; 79: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4373617458794931033, ; 80: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4397634830160618470, ; 81: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4477672992252076438, ; 82: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 83: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4533124835995628778, ; 84: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4672453897036726049, ; 85: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4716677666592453464, ; 86: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4743821336939966868, ; 87: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4809057822547766521, ; 88: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 89: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4853321196694829351, ; 90: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 5081566143765835342, ; 91: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 92: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 93: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5182934613077526976, ; 94: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5244375036463807528, ; 95: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 96: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 97: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5290786973231294105, ; 98: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5423376490970181369, ; 99: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 100: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 101: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5457765010617926378, ; 102: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5507995362134886206, ; 103: System.Core.dll => 0x4c705499688c873e => 21
	i64 5527431512186326818, ; 104: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 105: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 106: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5591791169662171124, ; 107: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5650097808083101034, ; 108: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5783556987928984683, ; 109: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5979151488806146654, ; 110: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 111: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6042474524222270111, ; 112: LopesTreinadorApp.dll => 0x53db2e90bc9daa9f => 0
	i64 6222399776351216807, ; 113: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 114: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 115: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 116: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6357457916754632952, ; 117: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 177
	i64 6617685658146568858, ; 118: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6713440830605852118, ; 119: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 120: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6772837112740759457, ; 121: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6786606130239981554, ; 122: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 123: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6814185388980153342, ; 124: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6876862101832370452, ; 125: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6894844156784520562, ; 126: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 7060896174307865760, ; 127: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 128: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 129: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7112547816752919026, ; 130: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7270811800166795866, ; 131: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 132: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 133: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 134: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7377312882064240630, ; 135: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 136: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 137: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7592577537120840276, ; 138: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7602111570124318452, ; 139: System.Reactive => 0x698020320025a6f4 => 176
	i64 7637303409920963731, ; 140: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 141: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7694700312542370399, ; 142: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7714652370974252055, ; 143: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7735176074855944702, ; 144: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7791074099216502080, ; 145: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 146: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 8025517457475554965, ; 147: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 148: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8064050204834738623, ; 149: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8085230611270010360, ; 150: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 151: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 152: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 153: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8167236081217502503, ; 154: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 155: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8264926008854159966, ; 156: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 157: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 158: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 159: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8410671156615598628, ; 160: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8518412311883997971, ; 161: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 162: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8623059219396073920, ; 163: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 164: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638972117149407195, ; 165: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8648495978913578441, ; 166: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8684531736582871431, ; 167: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8702320156596882678, ; 168: Firebase.dll => 0x78c4da1357adccf6 => 173
	i64 8725526185868997716, ; 169: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8941376889969657626, ; 170: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8954753533646919997, ; 171: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 9057635389615298436, ; 172: LiteDB => 0x7db32f65bf06d784 => 174
	i64 9138683372487561558, ; 173: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9296667808972889535, ; 174: LiteDB.dll => 0x8104661dcca35dbf => 174
	i64 9468215723722196442, ; 175: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9554839972845591462, ; 176: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9584643793929893533, ; 177: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9659729154652888475, ; 178: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 179: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 180: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9702891218465930390, ; 181: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9808709177481450983, ; 182: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9834056768316610435, ; 183: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 184: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9933555792566666578, ; 185: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9974604633896246661, ; 186: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 10038780035334861115, ; 187: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 188: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10078727084704864206, ; 189: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 190: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10105485790837105934, ; 191: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10144742755892837524, ; 192: Firebase => 0x8cc95dc98eb5bc94 => 173
	i64 10236703004850800690, ; 193: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 194: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10360651442923773544, ; 195: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 196: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10546663366131771576, ; 197: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 198: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 199: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10670374202010151210, ; 200: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 201: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10785150219063592792, ; 202: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10822644899632537592, ; 203: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 204: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10899834349646441345, ; 205: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 206: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 207: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 11023048688141570732, ; 208: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 209: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11188319605227840848, ; 210: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11235648312900863002, ; 211: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11329751333533450475, ; 212: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11347436699239206956, ; 213: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11432101114902388181, ; 214: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 215: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 216: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 217: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11597940890313164233, ; 218: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11692977985522001935, ; 219: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11707554492040141440, ; 220: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 221: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11991047634523762324, ; 222: System.Net => 0xa668c24ad493ae94 => 81
	i64 12040886584167504988, ; 223: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12063623837170009990, ; 224: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 225: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 226: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 227: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12145679461940342714, ; 228: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12201331334810686224, ; 229: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 230: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12332222936682028543, ; 231: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 232: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12475113361194491050, ; 233: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 177
	i64 12484640065901947158, ; 234: LopesTreinadorApp => 0xad4259fe54b1e916 => 0
	i64 12517810545449516888, ; 235: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12550732019250633519, ; 236: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12699999919562409296, ; 237: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12708238894395270091, ; 238: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 239: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 240: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12835242264250840079, ; 241: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843770487262409629, ; 242: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 243: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 13068258254871114833, ; 244: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13173818576982874404, ; 245: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13343850469010654401, ; 246: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 247: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13431476299110033919, ; 248: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13463706743370286408, ; 249: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13578472628727169633, ; 250: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 251: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13647894001087880694, ; 252: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13702626353344114072, ; 253: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 254: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 255: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 256: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13768883594457632599, ; 257: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13881769479078963060, ; 258: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 259: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 260: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 14075334701871371868, ; 261: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14125464355221830302, ; 262: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14212104595480609394, ; 263: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 264: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 265: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 266: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 267: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14298246716367104064, ; 268: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 269: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 270: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14346402571976470310, ; 271: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14461014870687870182, ; 272: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14551742072151931844, ; 273: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 274: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 275: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14622043554576106986, ; 276: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14690985099581930927, ; 277: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14832630590065248058, ; 278: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14912225920358050525, ; 279: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 280: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14984936317414011727, ; 281: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 282: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 15015154896917945444, ; 283: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 284: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 285: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 286: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15115185479366240210, ; 287: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 288: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15234786388537674379, ; 289: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 290: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15299439993936780255, ; 291: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15338463749992804988, ; 292: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15526743539506359484, ; 293: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 294: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 295: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15541854775306130054, ; 296: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 297: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15609085926864131306, ; 298: System.dll => 0xd89e9cf3334914ea => 164
	i64 15661133872274321916, ; 299: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15710114879900314733, ; 300: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15755368083429170162, ; 301: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15817206913877585035, ; 302: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15847085070278954535, ; 303: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15885744048853936810, ; 304: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15934062614519587357, ; 305: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 306: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 307: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15971679995444160383, ; 308: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 309: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16054465462676478687, ; 310: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16154507427712707110, ; 311: System => 0xe03056ea4e39aa26 => 164
	i64 16219561732052121626, ; 312: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16315482530584035869, ; 313: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16337011941688632206, ; 314: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16454459195343277943, ; 315: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 316: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16702652415771857902, ; 317: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 318: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 319: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 320: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 321: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 322: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16822611501064131242, ; 323: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 324: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 325: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 326: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16933958494752847024, ; 327: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16977952268158210142, ; 328: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 17008137082415910100, ; 329: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17062143951396181894, ; 330: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17118171214553292978, ; 331: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17187273293601214786, ; 332: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 333: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 334: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17230721278011714856, ; 335: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 336: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 337: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 338: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 339: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17470386307322966175, ; 340: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17509662556995089465, ; 341: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17627500474728259406, ; 342: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17685921127322830888, ; 343: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17712670374920797664, ; 344: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17777860260071588075, ; 345: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17838668724098252521, ; 346: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17928294245072900555, ; 347: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17992315986609351877, ; 348: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18025913125965088385, ; 349: System.Threading => 0xfa28e87b91334681 => 148
	i64 18146411883821974900, ; 350: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 351: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18225059387460068507, ; 352: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 353: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18318849532986632368, ; 354: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18439108438687598470 ; 355: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [356 x i32] [
	i32 171, ; 0
	i32 58, ; 1
	i32 151, ; 2
	i32 132, ; 3
	i32 56, ; 4
	i32 176, ; 5
	i32 95, ; 6
	i32 129, ; 7
	i32 145, ; 8
	i32 18, ; 9
	i32 150, ; 10
	i32 104, ; 11
	i32 95, ; 12
	i32 36, ; 13
	i32 28, ; 14
	i32 50, ; 15
	i32 115, ; 16
	i32 70, ; 17
	i32 65, ; 18
	i32 170, ; 19
	i32 145, ; 20
	i32 40, ; 21
	i32 89, ; 22
	i32 81, ; 23
	i32 175, ; 24
	i32 66, ; 25
	i32 62, ; 26
	i32 86, ; 27
	i32 106, ; 28
	i32 102, ; 29
	i32 35, ; 30
	i32 119, ; 31
	i32 142, ; 32
	i32 141, ; 33
	i32 53, ; 34
	i32 35, ; 35
	i32 141, ; 36
	i32 175, ; 37
	i32 8, ; 38
	i32 14, ; 39
	i32 51, ; 40
	i32 136, ; 41
	i32 101, ; 42
	i32 116, ; 43
	i32 163, ; 44
	i32 166, ; 45
	i32 67, ; 46
	i32 80, ; 47
	i32 101, ; 48
	i32 117, ; 49
	i32 78, ; 50
	i32 114, ; 51
	i32 121, ; 52
	i32 48, ; 53
	i32 128, ; 54
	i32 82, ; 55
	i32 110, ; 56
	i32 75, ; 57
	i32 53, ; 58
	i32 69, ; 59
	i32 83, ; 60
	i32 172, ; 61
	i32 116, ; 62
	i32 156, ; 63
	i32 167, ; 64
	i32 32, ; 65
	i32 122, ; 66
	i32 72, ; 67
	i32 62, ; 68
	i32 161, ; 69
	i32 113, ; 70
	i32 88, ; 71
	i32 105, ; 72
	i32 18, ; 73
	i32 146, ; 74
	i32 118, ; 75
	i32 58, ; 76
	i32 17, ; 77
	i32 52, ; 78
	i32 92, ; 79
	i32 55, ; 80
	i32 129, ; 81
	i32 152, ; 82
	i32 41, ; 83
	i32 92, ; 84
	i32 50, ; 85
	i32 162, ; 86
	i32 13, ; 87
	i32 36, ; 88
	i32 67, ; 89
	i32 109, ; 90
	i32 99, ; 91
	i32 99, ; 92
	i32 11, ; 93
	i32 11, ; 94
	i32 25, ; 95
	i32 128, ; 96
	i32 76, ; 97
	i32 109, ; 98
	i32 106, ; 99
	i32 2, ; 100
	i32 26, ; 101
	i32 157, ; 102
	i32 21, ; 103
	i32 49, ; 104
	i32 43, ; 105
	i32 126, ; 106
	i32 59, ; 107
	i32 119, ; 108
	i32 3, ; 109
	i32 38, ; 110
	i32 124, ; 111
	i32 0, ; 112
	i32 137, ; 113
	i32 149, ; 114
	i32 85, ; 115
	i32 90, ; 116
	i32 177, ; 117
	i32 133, ; 118
	i32 96, ; 119
	i32 3, ; 120
	i32 105, ; 121
	i32 33, ; 122
	i32 154, ; 123
	i32 158, ; 124
	i32 155, ; 125
	i32 82, ; 126
	i32 143, ; 127
	i32 87, ; 128
	i32 19, ; 129
	i32 51, ; 130
	i32 61, ; 131
	i32 54, ; 132
	i32 4, ; 133
	i32 97, ; 134
	i32 17, ; 135
	i32 155, ; 136
	i32 84, ; 137
	i32 29, ; 138
	i32 176, ; 139
	i32 45, ; 140
	i32 64, ; 141
	i32 66, ; 142
	i32 172, ; 143
	i32 1, ; 144
	i32 47, ; 145
	i32 24, ; 146
	i32 165, ; 147
	i32 108, ; 148
	i32 12, ; 149
	i32 63, ; 150
	i32 27, ; 151
	i32 23, ; 152
	i32 93, ; 153
	i32 168, ; 154
	i32 12, ; 155
	i32 29, ; 156
	i32 103, ; 157
	i32 14, ; 158
	i32 126, ; 159
	i32 91, ; 160
	i32 9, ; 161
	i32 86, ; 162
	i32 71, ; 163
	i32 168, ; 164
	i32 1, ; 165
	i32 5, ; 166
	i32 44, ; 167
	i32 173, ; 168
	i32 27, ; 169
	i32 158, ; 170
	i32 112, ; 171
	i32 174, ; 172
	i32 121, ; 173
	i32 174, ; 174
	i32 159, ; 175
	i32 131, ; 176
	i32 57, ; 177
	i32 138, ; 178
	i32 83, ; 179
	i32 30, ; 180
	i32 10, ; 181
	i32 171, ; 182
	i32 150, ; 183
	i32 94, ; 184
	i32 60, ; 185
	i32 157, ; 186
	i32 64, ; 187
	i32 88, ; 188
	i32 79, ; 189
	i32 47, ; 190
	i32 143, ; 191
	i32 173, ; 192
	i32 74, ; 193
	i32 91, ; 194
	i32 135, ; 195
	i32 90, ; 196
	i32 112, ; 197
	i32 42, ; 198
	i32 159, ; 199
	i32 4, ; 200
	i32 103, ; 201
	i32 70, ; 202
	i32 60, ; 203
	i32 39, ; 204
	i32 153, ; 205
	i32 56, ; 206
	i32 34, ; 207
	i32 21, ; 208
	i32 163, ; 209
	i32 140, ; 210
	i32 89, ; 211
	i32 147, ; 212
	i32 162, ; 213
	i32 6, ; 214
	i32 169, ; 215
	i32 31, ; 216
	i32 107, ; 217
	i32 167, ; 218
	i32 140, ; 219
	i32 59, ; 220
	i32 144, ; 221
	i32 81, ; 222
	i32 74, ; 223
	i32 130, ; 224
	i32 25, ; 225
	i32 7, ; 226
	i32 93, ; 227
	i32 137, ; 228
	i32 113, ; 229
	i32 9, ; 230
	i32 104, ; 231
	i32 19, ; 232
	i32 177, ; 233
	i32 0, ; 234
	i32 33, ; 235
	i32 46, ; 236
	i32 30, ; 237
	i32 57, ; 238
	i32 134, ; 239
	i32 114, ; 240
	i32 55, ; 241
	i32 6, ; 242
	i32 77, ; 243
	i32 111, ; 244
	i32 102, ; 245
	i32 170, ; 246
	i32 115, ; 247
	i32 76, ; 248
	i32 85, ; 249
	i32 160, ; 250
	i32 2, ; 251
	i32 24, ; 252
	i32 32, ; 253
	i32 117, ; 254
	i32 37, ; 255
	i32 16, ; 256
	i32 52, ; 257
	i32 20, ; 258
	i32 123, ; 259
	i32 154, ; 260
	i32 131, ; 261
	i32 148, ; 262
	i32 120, ; 263
	i32 28, ; 264
	i32 132, ; 265
	i32 100, ; 266
	i32 134, ; 267
	i32 153, ; 268
	i32 97, ; 269
	i32 125, ; 270
	i32 69, ; 271
	i32 72, ; 272
	i32 136, ; 273
	i32 124, ; 274
	i32 71, ; 275
	i32 111, ; 276
	i32 152, ; 277
	i32 118, ; 278
	i32 127, ; 279
	i32 133, ; 280
	i32 77, ; 281
	i32 46, ; 282
	i32 73, ; 283
	i32 63, ; 284
	i32 98, ; 285
	i32 84, ; 286
	i32 43, ; 287
	i32 61, ; 288
	i32 37, ; 289
	i32 40, ; 290
	i32 160, ; 291
	i32 98, ; 292
	i32 135, ; 293
	i32 20, ; 294
	i32 65, ; 295
	i32 125, ; 296
	i32 75, ; 297
	i32 164, ; 298
	i32 156, ; 299
	i32 5, ; 300
	i32 49, ; 301
	i32 144, ; 302
	i32 139, ; 303
	i32 100, ; 304
	i32 123, ; 305
	i32 120, ; 306
	i32 142, ; 307
	i32 39, ; 308
	i32 68, ; 309
	i32 41, ; 310
	i32 164, ; 311
	i32 73, ; 312
	i32 165, ; 313
	i32 127, ; 314
	i32 68, ; 315
	i32 169, ; 316
	i32 151, ; 317
	i32 45, ; 318
	i32 108, ; 319
	i32 48, ; 320
	i32 96, ; 321
	i32 31, ; 322
	i32 23, ; 323
	i32 166, ; 324
	i32 22, ; 325
	i32 138, ; 326
	i32 78, ; 327
	i32 54, ; 328
	i32 10, ; 329
	i32 16, ; 330
	i32 139, ; 331
	i32 13, ; 332
	i32 15, ; 333
	i32 122, ; 334
	i32 87, ; 335
	i32 149, ; 336
	i32 22, ; 337
	i32 34, ; 338
	i32 79, ; 339
	i32 147, ; 340
	i32 80, ; 341
	i32 42, ; 342
	i32 26, ; 343
	i32 107, ; 344
	i32 110, ; 345
	i32 7, ; 346
	i32 44, ; 347
	i32 161, ; 348
	i32 148, ; 349
	i32 38, ; 350
	i32 15, ; 351
	i32 146, ; 352
	i32 8, ; 353
	i32 130, ; 354
	i32 94 ; 355
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
