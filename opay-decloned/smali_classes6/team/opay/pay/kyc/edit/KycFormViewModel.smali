.class public final Lteam/opay/pay/kyc/edit/KycFormViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "KycFormViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/edit/KycFormViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008(\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 B2\u00020\u00012\u00020\u0002:\u0002\u00d1\u0001B1\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u00102\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001b\u0010$\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R(\u0010-\u001a\u0008\u0012\u0004\u0012\u00020&0%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R(\u00101\u001a\u0008\u0012\u0004\u0012\u00020&0%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010(\u001a\u0004\u0008/\u0010*\"\u0004\u00080\u0010,R#\u00106\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00110\u00108\u0006\u00a2\u0006\u000c\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105R\u0017\u0010<\u001a\u0002078\u0006\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;R\"\u0010D\u001a\u00020=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u0017\u0010G\u001a\u0002078\u0006\u00a2\u0006\u000c\n\u0004\u0008E\u00109\u001a\u0004\u0008F\u0010;R\u0017\u0010J\u001a\u0002078\u0006\u00a2\u0006\u000c\n\u0004\u0008H\u00109\u001a\u0004\u0008I\u0010;R$\u0010R\u001a\u0004\u0018\u00010K8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\u0017\u0010X\u001a\u00020S8\u0006\u00a2\u0006\u000c\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010WR\u0017\u0010[\u001a\u0002078\u0006\u00a2\u0006\u000c\n\u0004\u0008Y\u00109\u001a\u0004\u0008Z\u0010;R\u0017\u0010^\u001a\u0002078\u0006\u00a2\u0006\u000c\n\u0004\u0008\\\u00109\u001a\u0004\u0008]\u0010;R\u0017\u0010`\u001a\u0002078\u0006\u00a2\u0006\u000c\n\u0004\u0008]\u00109\u001a\u0004\u0008_\u0010;R\u0017\u0010b\u001a\u0002078\u0006\u00a2\u0006\u000c\n\u0004\u0008V\u00109\u001a\u0004\u0008a\u0010;R$\u0010f\u001a\u0004\u0018\u00010=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008c\u0010?\u001a\u0004\u0008d\u0010A\"\u0004\u0008e\u0010CR$\u0010n\u001a\u0004\u0018\u00010g8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008h\u0010i\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR$\u0010u\u001a\u0004\u0018\u00010o8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Z\u0010p\u001a\u0004\u0008q\u0010r\"\u0004\u0008s\u0010tR$\u0010x\u001a\u0004\u0018\u00010o8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010p\u001a\u0004\u0008v\u0010r\"\u0004\u0008w\u0010tR$\u0010z\u001a\u0004\u0018\u00010o8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u0010p\u001a\u0004\u0008c\u0010r\"\u0004\u0008y\u0010tR(\u0010\u007f\u001a\u00020=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0004\u00084\u0010?\u0012\u0004\u0008}\u0010~\u001a\u0004\u0008{\u0010A\"\u0004\u0008|\u0010CR)\u0010\u0082\u0001\u001a\u00020&8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001\"\u0006\u0008\u0084\u0001\u0010\u0085\u0001R%\u0010\u0088\u0001\u001a\u00020=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008{\u0010?\u001a\u0005\u0008\u0086\u0001\u0010A\"\u0005\u0008\u0087\u0001\u0010CR%\u0010\u008b\u0001\u001a\u00020=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008v\u0010?\u001a\u0005\u0008\u0089\u0001\u0010A\"\u0005\u0008\u008a\u0001\u0010CR%\u0010\u008e\u0001\u001a\u00020=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008F\u0010?\u001a\u0005\u0008\u008c\u0001\u0010A\"\u0005\u0008\u008d\u0001\u0010CR&\u0010\u0092\u0001\u001a\u00020=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u008f\u0001\u0010?\u001a\u0005\u0008\u0090\u0001\u0010A\"\u0005\u0008\u0091\u0001\u0010CR-\u0010\u0097\u0001\u001a\u00020=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u001c\n\u0005\u0008\u0093\u0001\u0010?\u0012\u0005\u0008\u0096\u0001\u0010~\u001a\u0005\u0008\u0094\u0001\u0010A\"\u0005\u0008\u0095\u0001\u0010CR)\u0010\u009b\u0001\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0005\u0012\u00030\u0099\u0001\u0018\u00010\u0098\u00010%8\u0006\u00a2\u0006\r\n\u0004\u0008)\u0010(\u001a\u0005\u0008\u009a\u0001\u0010*R\"\u0010\u009e\u0001\u001a\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u009c\u00010%8\u0006\u00a2\u0006\r\n\u0004\u0008j\u0010(\u001a\u0005\u0008\u009d\u0001\u0010*R\"\u0010\u00a0\u0001\u001a\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u009c\u00010%8\u0006\u00a2\u0006\r\n\u0004\u0008q\u0010(\u001a\u0005\u0008\u009f\u0001\u0010*R)\u0010\u00a3\u0001\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0005\u0012\u00030\u00a1\u0001\u0018\u00010\u0098\u00010%8\u0006\u00a2\u0006\r\n\u0004\u0008I\u0010(\u001a\u0005\u0008\u00a2\u0001\u0010*R!\u0010\u00a5\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010&0%8\u0006\u00a2\u0006\r\n\u0004\u0008/\u0010(\u001a\u0005\u0008\u00a4\u0001\u0010*R#\u0010\u00a9\u0001\u001a\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u00a6\u00010%8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00a7\u0001\u0010(\u001a\u0005\u0008\u00a8\u0001\u0010*R\"\u0010\u00ac\u0001\u001a\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u00aa\u00010%8\u0006\u00a2\u0006\r\n\u0004\u0008y\u0010(\u001a\u0005\u0008\u00ab\u0001\u0010*R\"\u0010\u00ae\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010&0%8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0087\u0001\u0010(\u001a\u0005\u0008\u00ad\u0001\u0010*R#\u0010\u00b1\u0001\u001a\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u00af\u00010%8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0084\u0001\u0010(\u001a\u0005\u0008\u00b0\u0001\u0010*R\'\u0010\u00b3\u0001\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020=\u0018\u00010\u00110%8\u0006\u00a2\u0006\r\n\u0004\u0008P\u0010(\u001a\u0005\u0008\u00b2\u0001\u0010*R%\u0010\u00b6\u0001\u001a\u00020=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008|\u0010?\u001a\u0005\u0008\u00b4\u0001\u0010A\"\u0005\u0008\u00b5\u0001\u0010CR%\u0010\u00b9\u0001\u001a\u00020=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008w\u0010?\u001a\u0005\u0008\u00b7\u0001\u0010A\"\u0005\u0008\u00b8\u0001\u0010CR&\u0010\u00bc\u0001\u001a\u00020=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0091\u0001\u0010?\u001a\u0005\u0008\u00ba\u0001\u0010A\"\u0005\u0008\u00bb\u0001\u0010CR \u0010\u00be\u0001\u001a\u0008\u0012\u0004\u0012\u00020=0%8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u008d\u0001\u0010(\u001a\u0005\u0008\u00bd\u0001\u0010*R!\u0010\u00c1\u0001\u001a\t\u0012\u0005\u0012\u00030\u00bf\u00010%8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u008a\u0001\u0010(\u001a\u0005\u0008\u00c0\u0001\u0010*R\u0014\u0010\u00c2\u0001\u001a\u00020&8F\u00a2\u0006\u0008\u001a\u0006\u0008\u00a7\u0001\u0010\u0083\u0001R\u0014\u0010\u00c3\u0001\u001a\u00020&8F\u00a2\u0006\u0008\u001a\u0006\u0008\u0093\u0001\u0010\u0083\u0001R\u0014\u0010\u00c5\u0001\u001a\u00020\u000e8F\u00a2\u0006\u0008\u001a\u0006\u0008\u008f\u0001\u0010\u00c4\u0001R\u0014\u0010\u00c6\u0001\u001a\u00020\u000e8F\u00a2\u0006\u0008\u001a\u0006\u0008\u0080\u0001\u0010\u00c4\u0001R\u0012\u0010\u00c7\u0001\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008h\u0010AR\u0017\u0010\u00ca\u0001\u001a\u00030\u00c8\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008T\u0010\u00c9\u0001R\u0017\u0010\u00cd\u0001\u001a\u00030\u00cb\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008Y\u0010\u00cc\u0001R\u0019\u0010\u00d0\u0001\u001a\u0005\u0018\u00010\u00ce\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008H\u0010\u00cf\u0001\u00a8\u0006\u00d2\u0001"
    }
    d2 = {
        "Lteam/opay/pay/kyc/edit/KycFormViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lteam/opay/core/api/e;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/core/account/AccountRepository;",
        "accountRepository",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Lteam/opay/pay/kyc/customer/KycRepository;",
        "kycRepository",
        "sessionProvider",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/account/AccountRepository;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/kyc/customer/KycRepository;Lteam/opay/core/api/e;)V",
        "Lteam/opay/core/account/AccountProfile;",
        "updates",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "",
        "Y",
        "(Lteam/opay/core/account/AccountProfile;)Landroidx/lifecycle/LiveData;",
        "a",
        "Landroid/app/Application;",
        "b",
        "Lteam/opay/core/account/AccountRepository;",
        "c",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "d",
        "Lteam/opay/pay/kyc/customer/KycRepository;",
        "e",
        "Lteam/opay/core/api/e;",
        "Lteam/opay/core/settings/SettingsStorage;",
        "f",
        "Lid8;",
        "getSettingsStorage",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "g",
        "Landroidx/lifecycle/MutableLiveData;",
        "F",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setRequestProcess",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "requestProcess",
        "h",
        "J",
        "setUpdateActionBar",
        "updateActionBar",
        "i",
        "Landroidx/lifecycle/LiveData;",
        "y",
        "()Landroidx/lifecycle/LiveData;",
        "getProfile",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "j",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "w",
        "()Lteam/opay/pay/android/validation/FieldValidation;",
        "firstName",
        "",
        "k",
        "Ljava/lang/String;",
        "getNickName",
        "()Ljava/lang/String;",
        "U",
        "(Ljava/lang/String;)V",
        "nickName",
        "l",
        "C",
        "middleName",
        "m",
        "I",
        "surname",
        "Lteam/opay/core/api/GraphQL$Gender;",
        "n",
        "Lteam/opay/core/api/GraphQL$Gender;",
        "x",
        "()Lteam/opay/core/api/GraphQL$Gender;",
        "O",
        "(Lteam/opay/core/api/GraphQL$Gender;)V",
        "gender",
        "Lteam/opay/pay/android/validation/CalendarFieldValidation;",
        "o",
        "Lteam/opay/pay/android/validation/CalendarFieldValidation;",
        "s",
        "()Lteam/opay/pay/android/validation/CalendarFieldValidation;",
        "birthDate",
        "p",
        "v",
        "email",
        "q",
        "r",
        "address",
        "getBvn",
        "bvn",
        "getPhone",
        "phone",
        "t",
        "getState",
        "setState",
        "state",
        "Ljava/util/Date;",
        "u",
        "Ljava/util/Date;",
        "G",
        "()Ljava/util/Date;",
        "V",
        "(Ljava/util/Date;)V",
        "selectDate",
        "Lteam/opay/pay/address/Address;",
        "Lteam/opay/pay/address/Address;",
        "H",
        "()Lteam/opay/pay/address/Address;",
        "W",
        "(Lteam/opay/pay/address/Address;)V",
        "stateData",
        "B",
        "Q",
        "lgaData",
        "L",
        "cityData",
        "A",
        "P",
        "getKycFrom$annotations",
        "()V",
        "kycFrom",
        "z",
        "Z",
        "isFromEaseMoniModule",
        "()Z",
        "N",
        "(Z)V",
        "getCurrentReward",
        "M",
        "currentReward",
        "getNextReward",
        "T",
        "nextReward",
        "getNextActionName",
        "S",
        "nextActionName",
        "D",
        "getNextAction",
        "R",
        "nextAction",
        "E",
        "getUserKycLevel",
        "setUserKycLevel",
        "getUserKycLevel$annotations",
        "userKycLevel",
        "",
        "Lteam/opay/pay/kyc/customer/BvnCheckQAItem;",
        "getBvnQAList",
        "bvnQAList",
        "Lteam/opay/pay/kyc/base/NewKyc1TaskDataRsp;",
        "getKyc3List",
        "kyc3List",
        "getKyc2List",
        "kyc2List",
        "Lteam/opay/pay/kyc/customer/ImageTypeItem;",
        "getImageTypeList",
        "imageTypeList",
        "getLoading",
        "loading",
        "Lteam/opay/pay/kyc/customer/Kyc2CheckResult;",
        "K",
        "getKyc2UpgradeResult",
        "kyc2UpgradeResult",
        "Lteam/opay/pay/kyc/customer/Kyc2UpgradeReq;",
        "getKyc2UpgradeReq",
        "kyc2UpgradeReq",
        "getKycListRefresh",
        "kycListRefresh",
        "Lteam/opay/pay/kyc/customer/BvnUpdateDto;",
        "getBvnUpdateDto",
        "bvnUpdateDto",
        "getKycIdCardResult",
        "kycIdCardResult",
        "getBizSecurityId",
        "setBizSecurityId",
        "bizSecurityId",
        "getOtpPhone",
        "setOtpPhone",
        "otpPhone",
        "getKyc2Bvn",
        "setKyc2Bvn",
        "kyc2Bvn",
        "getRequestErrorLiveData",
        "requestErrorLiveData",
        "Lteam/opay/pay/kyc/customer/UpgradeUserDataRsp;",
        "getUpgradeUserInfo",
        "upgradeUserInfo",
        "valid",
        "newCardValid",
        "()Lteam/opay/core/account/AccountProfile;",
        "newCardEdit",
        "kycEdit",
        "dob",
        "Lteam/opay/core/api/Country;",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
        "Companion",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final U:Lteam/opay/pay/kyc/edit/KycFormViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final V:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public B:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public C:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public D:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public E:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final F:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/customer/BvnCheckQAItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final G:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/NewKyc1TaskDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final H:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/NewKyc1TaskDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final I:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/customer/ImageTypeItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final J:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final K:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/customer/Kyc2CheckResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final L:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/customer/Kyc2UpgradeReq;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final M:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final N:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/customer/BvnUpdateDto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final O:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public P:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public R:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final S:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final T:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/customer/UpgradeUserDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final a:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/core/account/AccountRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/pay/kyc/customer/KycRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/account/AccountProfile;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lteam/opay/core/api/GraphQL$Gender;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final o:Lteam/opay/pay/android/validation/CalendarFieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Lteam/opay/pay/address/Address;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w:Lteam/opay/pay/address/Address;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x:Lteam/opay/pay/address/Address;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public y:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/edit/KycFormViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/edit/KycFormViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->U:Lteam/opay/pay/kyc/edit/KycFormViewModel$Companion;

    .line 8
    .line 9
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    const-string/jumbo v1, "yyyy-MM-dd"

    .line 12
    .line 13
    .line 14
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->V:Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/account/AccountRepository;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/kyc/customer/KycRepository;Lteam/opay/core/api/e;)V
    .locals 18
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/account/AccountRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/kyc/customer/KycRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    const-string v6, "app"

    .line 14
    .line 15
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v6, "accountRepository"

    .line 19
    .line 20
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v6, "appExecutors"

    .line 24
    .line 25
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v6, "kycRepository"

    .line 29
    .line 30
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v6, "sessionProvider"

    .line 34
    .line 35
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct/range {p0 .. p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->a:Landroid/app/Application;

    .line 42
    .line 43
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->b:Lteam/opay/core/account/AccountRepository;

    .line 44
    .line 45
    iput-object v3, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->c:Lteam/opay/core/android/arch/AppExecutors;

    .line 46
    .line 47
    iput-object v4, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->d:Lteam/opay/pay/kyc/customer/KycRepository;

    .line 48
    .line 49
    iput-object v5, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->e:Lteam/opay/core/api/e;

    .line 50
    .line 51
    new-instance v1, Lix7;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lix7;-><init>(Lteam/opay/pay/kyc/edit/KycFormViewModel;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->f:Lid8;

    .line 61
    .line 62
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 63
    .line 64
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-virtual {v2, v1}, Lteam/opay/core/account/AccountRepository;->o(Z)Landroidx/lifecycle/LiveData;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->i:Landroidx/lifecycle/LiveData;

    .line 82
    .line 83
    new-instance v1, Lteam/opay/pay/android/validation/FieldValidation;

    .line 84
    .line 85
    invoke-static {}, Lm7e;->Z()Lkotlin/jvm/functions/Function1;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    const/4 v10, 0x4

    .line 90
    const/4 v11, 0x0

    .line 91
    const/4 v7, 0x1

    .line 92
    const/4 v9, 0x0

    .line 93
    move-object v6, v1

    .line 94
    invoke-direct/range {v6 .. v11}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    .line 96
    .line 97
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->j:Lteam/opay/pay/android/validation/FieldValidation;

    .line 98
    .line 99
    const-string v1, ""

    .line 100
    .line 101
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->k:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v2, Lteam/opay/pay/android/validation/FieldValidation;

    .line 104
    .line 105
    invoke-static {}, Lm7e;->Z()Lkotlin/jvm/functions/Function1;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    const/4 v7, 0x0

    .line 110
    move-object v6, v2

    .line 111
    invoke-direct/range {v6 .. v11}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 112
    .line 113
    .line 114
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->l:Lteam/opay/pay/android/validation/FieldValidation;

    .line 115
    .line 116
    new-instance v2, Lteam/opay/pay/android/validation/FieldValidation;

    .line 117
    .line 118
    invoke-static {}, Lm7e;->Z()Lkotlin/jvm/functions/Function1;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    const/16 v16, 0x4

    .line 123
    .line 124
    const/16 v17, 0x0

    .line 125
    .line 126
    const/4 v13, 0x1

    .line 127
    const/4 v15, 0x0

    .line 128
    move-object v12, v2

    .line 129
    invoke-direct/range {v12 .. v17}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    .line 131
    .line 132
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->m:Lteam/opay/pay/android/validation/FieldValidation;

    .line 133
    .line 134
    new-instance v2, Lteam/opay/pay/android/validation/CalendarFieldValidation;

    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    invoke-direct {v2, v3}, Lteam/opay/pay/android/validation/CalendarFieldValidation;-><init>(Z)V

    .line 138
    .line 139
    .line 140
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->o:Lteam/opay/pay/android/validation/CalendarFieldValidation;

    .line 141
    .line 142
    new-instance v2, Lteam/opay/pay/android/validation/FieldValidation;

    .line 143
    .line 144
    invoke-static {}, Lm7e;->X()Lkotlin/jvm/functions/Function1;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    const/4 v7, 0x1

    .line 149
    move-object v6, v2

    .line 150
    invoke-direct/range {v6 .. v11}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 151
    .line 152
    .line 153
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->p:Lteam/opay/pay/android/validation/FieldValidation;

    .line 154
    .line 155
    new-instance v2, Lteam/opay/pay/android/validation/FieldValidation;

    .line 156
    .line 157
    invoke-static {}, Lm7e;->T()Lkotlin/jvm/functions/Function1;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    move-object v12, v2

    .line 162
    invoke-direct/range {v12 .. v17}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 163
    .line 164
    .line 165
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->q:Lteam/opay/pay/android/validation/FieldValidation;

    .line 166
    .line 167
    new-instance v2, Lteam/opay/pay/android/validation/FieldValidation;

    .line 168
    .line 169
    invoke-static {}, Lm7e;->V()Lkotlin/jvm/functions/Function1;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    move-object v6, v2

    .line 174
    invoke-direct/range {v6 .. v11}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 175
    .line 176
    .line 177
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->r:Lteam/opay/pay/android/validation/FieldValidation;

    .line 178
    .line 179
    new-instance v2, Lteam/opay/pay/android/validation/FieldValidation;

    .line 180
    .line 181
    const/4 v4, 0x2

    .line 182
    const/4 v6, 0x0

    .line 183
    invoke-static {v5, v3, v4, v6}, Lm7e;->p0(Lteam/opay/core/api/e;IILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    .line 184
    .line 185
    .line 186
    move-result-object v14

    .line 187
    move-object v12, v2

    .line 188
    invoke-direct/range {v12 .. v17}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 189
    .line 190
    .line 191
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->s:Lteam/opay/pay/android/validation/FieldValidation;

    .line 192
    .line 193
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->t:Ljava/lang/String;

    .line 194
    .line 195
    const-string v2, "upgrade"

    .line 196
    .line 197
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->y:Ljava/lang/String;

    .line 198
    .line 199
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->A:Ljava/lang/String;

    .line 200
    .line 201
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->B:Ljava/lang/String;

    .line 202
    .line 203
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->C:Ljava/lang/String;

    .line 204
    .line 205
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->D:Ljava/lang/String;

    .line 206
    .line 207
    const-string v2, "1"

    .line 208
    .line 209
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->E:Ljava/lang/String;

    .line 210
    .line 211
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 212
    .line 213
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 214
    .line 215
    .line 216
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->F:Landroidx/lifecycle/MutableLiveData;

    .line 217
    .line 218
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 219
    .line 220
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 221
    .line 222
    .line 223
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->G:Landroidx/lifecycle/MutableLiveData;

    .line 224
    .line 225
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 226
    .line 227
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 228
    .line 229
    .line 230
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->H:Landroidx/lifecycle/MutableLiveData;

    .line 231
    .line 232
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 233
    .line 234
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 235
    .line 236
    .line 237
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->I:Landroidx/lifecycle/MutableLiveData;

    .line 238
    .line 239
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 240
    .line 241
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 242
    .line 243
    .line 244
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->J:Landroidx/lifecycle/MutableLiveData;

    .line 245
    .line 246
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 247
    .line 248
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 249
    .line 250
    .line 251
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->K:Landroidx/lifecycle/MutableLiveData;

    .line 252
    .line 253
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 254
    .line 255
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 256
    .line 257
    .line 258
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->L:Landroidx/lifecycle/MutableLiveData;

    .line 259
    .line 260
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 261
    .line 262
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 263
    .line 264
    .line 265
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->M:Landroidx/lifecycle/MutableLiveData;

    .line 266
    .line 267
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 268
    .line 269
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 270
    .line 271
    .line 272
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->N:Landroidx/lifecycle/MutableLiveData;

    .line 273
    .line 274
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 275
    .line 276
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 277
    .line 278
    .line 279
    iput-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    .line 280
    .line 281
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->P:Ljava/lang/String;

    .line 282
    .line 283
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->Q:Ljava/lang/String;

    .line 284
    .line 285
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->R:Ljava/lang/String;

    .line 286
    .line 287
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 288
    .line 289
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 290
    .line 291
    .line 292
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->S:Landroidx/lifecycle/MutableLiveData;

    .line 293
    .line 294
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 295
    .line 296
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 297
    .line 298
    .line 299
    iput-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->T:Landroidx/lifecycle/MutableLiveData;

    .line 300
    .line 301
    return-void
.end method

.method public static final X(Lteam/opay/pay/kyc/edit/KycFormViewModel;)Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->a:Landroid/app/Application;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static synthetic q(Lteam/opay/pay/kyc/edit/KycFormViewModel;)Lteam/opay/core/settings/SettingsStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/edit/KycFormViewModel;->X(Lteam/opay/pay/kyc/edit/KycFormViewModel;)Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Lteam/opay/pay/address/Address;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->w:Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Lteam/opay/pay/android/validation/FieldValidation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->l:Lteam/opay/pay/android/validation/FieldValidation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Lteam/opay/core/account/AccountProfile;
    .locals 42
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->j:Lteam/opay/pay/android/validation/FieldValidation;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->d()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->l:Lteam/opay/pay/android/validation/FieldValidation;

    .line 10
    .line 11
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->d()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->m:Lteam/opay/pay/android/validation/FieldValidation;

    .line 16
    .line 17
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->d()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v7, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->n:Lteam/opay/core/api/GraphQL$Gender;

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/edit/KycFormViewModel;->u()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    new-instance v1, Lteam/opay/core/account/AccountProfile;

    .line 28
    .line 29
    move-object v2, v1

    .line 30
    const/16 v40, 0xf

    .line 31
    .line 32
    const/16 v41, 0x0

    .line 33
    .line 34
    const-string v6, ""

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    const/4 v10, 0x0

    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v12, 0x0

    .line 40
    const/4 v13, 0x0

    .line 41
    const/4 v14, 0x0

    .line 42
    const/4 v15, 0x0

    .line 43
    const/16 v16, 0x0

    .line 44
    .line 45
    const/16 v17, 0x0

    .line 46
    .line 47
    const/16 v18, 0x0

    .line 48
    .line 49
    const/16 v19, 0x0

    .line 50
    .line 51
    const/16 v20, 0x0

    .line 52
    .line 53
    const/16 v21, 0x0

    .line 54
    .line 55
    const/16 v22, 0x0

    .line 56
    .line 57
    const/16 v23, 0x0

    .line 58
    .line 59
    const/16 v24, 0x0

    .line 60
    .line 61
    const/16 v25, 0x0

    .line 62
    .line 63
    const/16 v26, 0x0

    .line 64
    .line 65
    const/16 v27, 0x0

    .line 66
    .line 67
    const/16 v28, 0x0

    .line 68
    .line 69
    const/16 v29, 0x0

    .line 70
    .line 71
    const/16 v30, 0x0

    .line 72
    .line 73
    const/16 v31, 0x0

    .line 74
    .line 75
    const/16 v32, 0x0

    .line 76
    .line 77
    const/16 v33, 0x0

    .line 78
    .line 79
    const/16 v34, 0x0

    .line 80
    .line 81
    const/16 v35, 0x0

    .line 82
    .line 83
    const/16 v36, 0x0

    .line 84
    .line 85
    const/16 v37, 0x0

    .line 86
    .line 87
    const/16 v38, 0x0

    .line 88
    .line 89
    const/16 v39, -0x40

    .line 90
    .line 91
    invoke-direct/range {v2 .. v41}, Lteam/opay/core/account/AccountProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/account/KycDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLteam/opay/core/account/KycDocument;Lteam/opay/core/account/KycDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$KycUpgradeInfo;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    .line 93
    .line 94
    return-object v1
.end method

.method public final E()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->j:Lteam/opay/pay/android/validation/FieldValidation;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->l:Lteam/opay/pay/android/validation/FieldValidation;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->m:Lteam/opay/pay/android/validation/FieldValidation;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    new-array v3, v3, [Lteam/opay/pay/android/validation/FieldValidation;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v0, v3, v4

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aput-object v1, v3, v0

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    aput-object v2, v3, v1

    .line 18
    .line 19
    invoke-static {v3}, Lteam/opay/pay/android/validation/a;->a([Lteam/opay/pay/android/validation/FieldValidation;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->n:Lteam/opay/core/api/GraphQL$Gender;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/kyc/edit/KycFormViewModel;->u()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-lez v1, :cond_0

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    :cond_0
    return v4
.end method

.method public final F()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->u:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Lteam/opay/pay/address/Address;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->v:Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Lteam/opay/pay/android/validation/FieldValidation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->m:Lteam/opay/pay/android/validation/FieldValidation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->j:Lteam/opay/pay/android/validation/FieldValidation;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->l:Lteam/opay/pay/android/validation/FieldValidation;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->m:Lteam/opay/pay/android/validation/FieldValidation;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->q:Lteam/opay/pay/android/validation/FieldValidation;

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    new-array v4, v4, [Lteam/opay/pay/android/validation/FieldValidation;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    aput-object v0, v4, v5

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    aput-object v1, v4, v0

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    aput-object v2, v4, v1

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    aput-object v3, v4, v1

    .line 23
    .line 24
    invoke-static {v4}, Lteam/opay/pay/android/validation/a;->a([Lteam/opay/pay/android/validation/FieldValidation;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->n:Lteam/opay/core/api/GraphQL$Gender;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->u:Ljava/util/Date;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->v:Lteam/opay/pay/address/Address;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->w:Lteam/opay/pay/address/Address;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->x:Lteam/opay/pay/address/Address;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    const/4 v5, 0x1

    .line 51
    :cond_0
    return v5
.end method

.method public final L(Lteam/opay/pay/address/Address;)V
    .locals 0
    .param p1    # Lteam/opay/pay/address/Address;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->x:Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    return-void
.end method

.method public final M(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->A:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final N(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->z:Z

    .line 2
    .line 3
    return-void
.end method

.method public final O(Lteam/opay/core/api/GraphQL$Gender;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$Gender;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->n:Lteam/opay/core/api/GraphQL$Gender;

    .line 2
    .line 3
    return-void
.end method

.method public final P(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->y:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final Q(Lteam/opay/pay/address/Address;)V
    .locals 0
    .param p1    # Lteam/opay/pay/address/Address;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->w:Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    return-void
.end method

.method public final R(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->D:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final S(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->C:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final T(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->B:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final U(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->k:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final V(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->u:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public final W(Lteam/opay/pay/address/Address;)V
    .locals 0
    .param p1    # Lteam/opay/pay/address/Address;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->v:Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    return-void
.end method

.method public final Y(Lteam/opay/core/account/AccountProfile;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/core/account/AccountProfile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/account/AccountProfile;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "updates"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->b:Lteam/opay/core/account/AccountRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/core/account/AccountRepository;->u(Lteam/opay/core/account/AccountProfile;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->e:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->e:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->o()Lteam/opay/core/api/Country;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->e:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final r()Lteam/opay/pay/android/validation/FieldValidation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->q:Lteam/opay/pay/android/validation/FieldValidation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Lteam/opay/pay/android/validation/CalendarFieldValidation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->o:Lteam/opay/pay/android/validation/CalendarFieldValidation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Lteam/opay/pay/address/Address;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->x:Lteam/opay/pay/address/Address;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->o:Lteam/opay/pay/android/validation/CalendarFieldValidation;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/android/validation/CalendarFieldValidation;->c()Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v1, Lteam/opay/pay/kyc/edit/KycFormViewModel;->V:Ljava/text/SimpleDateFormat;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "format(...)"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final v()Lteam/opay/pay/android/validation/FieldValidation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->p:Lteam/opay/pay/android/validation/FieldValidation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Lteam/opay/pay/android/validation/FieldValidation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->j:Lteam/opay/pay/android/validation/FieldValidation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Lteam/opay/core/api/GraphQL$Gender;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->n:Lteam/opay/core/api/GraphQL$Gender;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/account/AccountProfile;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->i:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Lteam/opay/core/account/AccountProfile;
    .locals 43
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->j:Lteam/opay/pay/android/validation/FieldValidation;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->d()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->l:Lteam/opay/pay/android/validation/FieldValidation;

    .line 10
    .line 11
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->d()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->m:Lteam/opay/pay/android/validation/FieldValidation;

    .line 16
    .line 17
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->d()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v7, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->n:Lteam/opay/core/api/GraphQL$Gender;

    .line 22
    .line 23
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 24
    .line 25
    const-string/jumbo v2, "yyyy-MM-dd"

    .line 26
    .line 27
    .line 28
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 29
    .line 30
    invoke-direct {v1, v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->u:Ljava/util/Date;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    iget-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->p:Lteam/opay/pay/android/validation/FieldValidation;

    .line 40
    .line 41
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->d()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    iget-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->q:Lteam/opay/pay/android/validation/FieldValidation;

    .line 46
    .line 47
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->d()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    iget-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->v:Lteam/opay/pay/address/Address;

    .line 52
    .line 53
    const/16 v42, 0x0

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    invoke-virtual {v1}, Lteam/opay/pay/address/Address;->b()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    move-object v9, v1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move-object/from16 v9, v42

    .line 64
    .line 65
    :goto_0
    iget-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->v:Lteam/opay/pay/address/Address;

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-virtual {v1}, Lteam/opay/pay/address/Address;->a()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move-object/from16 v1, v42

    .line 79
    .line 80
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v24

    .line 84
    iget-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->w:Lteam/opay/pay/address/Address;

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    invoke-virtual {v1}, Lteam/opay/pay/address/Address;->b()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    move-object/from16 v22, v1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    move-object/from16 v22, v42

    .line 96
    .line 97
    :goto_2
    iget-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->w:Lteam/opay/pay/address/Address;

    .line 98
    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    invoke-virtual {v1}, Lteam/opay/pay/address/Address;->a()J

    .line 102
    .line 103
    .line 104
    move-result-wide v1

    .line 105
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    move-object/from16 v1, v42

    .line 111
    .line 112
    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v25

    .line 116
    iget-object v1, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->x:Lteam/opay/pay/address/Address;

    .line 117
    .line 118
    if-eqz v1, :cond_4

    .line 119
    .line 120
    invoke-virtual {v1}, Lteam/opay/pay/address/Address;->a()J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    goto :goto_4

    .line 129
    :cond_4
    move-object/from16 v1, v42

    .line 130
    .line 131
    :goto_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v26

    .line 135
    new-instance v1, Lteam/opay/core/account/AccountProfile;

    .line 136
    .line 137
    move-object v2, v1

    .line 138
    const/16 v40, 0xf

    .line 139
    .line 140
    const/16 v41, 0x0

    .line 141
    .line 142
    const-string v6, ""

    .line 143
    .line 144
    const/4 v12, 0x0

    .line 145
    const/4 v13, 0x0

    .line 146
    const/4 v14, 0x0

    .line 147
    const/4 v15, 0x0

    .line 148
    const/16 v16, 0x0

    .line 149
    .line 150
    const/16 v17, 0x0

    .line 151
    .line 152
    const/16 v18, 0x0

    .line 153
    .line 154
    const/16 v19, 0x0

    .line 155
    .line 156
    const/16 v20, 0x0

    .line 157
    .line 158
    const/16 v21, 0x0

    .line 159
    .line 160
    const/16 v23, 0x0

    .line 161
    .line 162
    const/16 v27, 0x0

    .line 163
    .line 164
    const/16 v28, 0x0

    .line 165
    .line 166
    const/16 v29, 0x0

    .line 167
    .line 168
    const/16 v30, 0x0

    .line 169
    .line 170
    const/16 v31, 0x0

    .line 171
    .line 172
    const/16 v32, 0x0

    .line 173
    .line 174
    const/16 v33, 0x0

    .line 175
    .line 176
    const/16 v34, 0x0

    .line 177
    .line 178
    const/16 v35, 0x0

    .line 179
    .line 180
    const/16 v36, 0x0

    .line 181
    .line 182
    const/16 v37, 0x0

    .line 183
    .line 184
    const/16 v38, 0x0

    .line 185
    .line 186
    const v39, -0xe80200

    .line 187
    .line 188
    .line 189
    invoke-direct/range {v2 .. v41}, Lteam/opay/core/account/AccountProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$Gender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/account/KycDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLteam/opay/core/account/KycDocument;Lteam/opay/core/account/KycDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lteam/opay/core/api/GraphQL$KycUpgradeInfo;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 190
    .line 191
    .line 192
    iget-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->x:Lteam/opay/pay/address/Address;

    .line 193
    .line 194
    if-eqz v2, :cond_5

    .line 195
    .line 196
    invoke-virtual {v2}, Lteam/opay/pay/address/Address;->b()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v42

    .line 200
    :cond_5
    move-object/from16 v2, v42

    .line 201
    .line 202
    invoke-virtual {v1, v2}, Lteam/opay/core/account/AccountProfile;->R(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v2, v0, Lteam/opay/pay/kyc/edit/KycFormViewModel;->k:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Lteam/opay/core/account/AccountProfile;->U(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return-object v1
.end method
