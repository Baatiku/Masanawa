.class public final Lteam/opay/pay/transfer/contact/TransferContactViewModel;
.super Lteam/opay/pay/payment/ServiceViewModel;
.source "TransferContactViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/contact/TransferContactViewModel$Companion;,
        Lteam/opay/pay/transfer/contact/TransferContactViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00bf\u00012\u00020\u00012\u00020\u0002:\u0002\u00c0\u0001B1\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001b\u0010\u0012\u001a\u00020\u00112\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J+\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u00190\u00182\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001d\u0010!\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008!\u0010\"J3\u0010(\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u001d2\u0014\u0010\'\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010&\u0012\u0004\u0012\u00020\u00110%\u00a2\u0006\u0004\u0008(\u0010)J\'\u0010+\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f2\u0008\u0008\u0002\u0010*\u001a\u00020\u0016\u00a2\u0006\u0004\u0008+\u0010,J#\u0010-\u001a\u00020\u00112\u0014\u0010\'\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010&\u0012\u0004\u0012\u00020\u00110%\u00a2\u0006\u0004\u0008-\u0010.J\u001d\u00102\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010\u000e2\u0006\u00100\u001a\u00020/\u00a2\u0006\u0004\u00082\u00103J!\u00105\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00190\u00182\u0006\u00104\u001a\u00020\u000f\u00a2\u0006\u0004\u00085\u00106J!\u00108\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00190\u00182\u0006\u0010\u0015\u001a\u000207\u00a2\u0006\u0004\u00088\u00109J3\u0010;\u001a\u00020\u00112\u0006\u0010$\u001a\u00020\u001d2\u001c\u0010\'\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00020\u00110:\u00a2\u0006\u0004\u0008;\u0010<J\u001d\u0010>\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020=\u00a2\u0006\u0004\u0008>\u0010?J!\u0010A\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00190\u00182\u0006\u0010 \u001a\u00020@\u00a2\u0006\u0004\u0008A\u0010BJ%\u0010F\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020C2\u0006\u0010E\u001a\u00020D\u00a2\u0006\u0004\u0008F\u0010GJ\u001d\u0010I\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020H\u00a2\u0006\u0004\u0008I\u0010JJ\u001d\u0010K\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020H\u00a2\u0006\u0004\u0008K\u0010JJ\u001d\u0010L\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008L\u0010\"J\u0015\u0010M\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008M\u0010NJ+\u0010R\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002010\u000e0\u00182\u0006\u0010P\u001a\u00020O2\u0008\u0008\u0002\u0010Q\u001a\u00020\u0016\u00a2\u0006\u0004\u0008R\u0010SJ\r\u0010T\u001a\u00020\u0016\u00a2\u0006\u0004\u0008T\u0010UJ\r\u0010V\u001a\u00020\u0016\u00a2\u0006\u0004\u0008V\u0010UJ#\u0010X\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001d2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00110W\u00a2\u0006\u0004\u0008X\u0010YJ\u001f\u0010[\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020Z0\u000e0\u00190\u0018\u00a2\u0006\u0004\u0008[\u0010\\J\u0015\u0010^\u001a\u00020\u00162\u0006\u0010]\u001a\u00020\u000f\u00a2\u0006\u0004\u0008^\u0010_R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010eR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0017\u0010\u000b\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008j\u0010k\u001a\u0004\u0008l\u0010mR\u001d\u0010s\u001a\u0008\u0012\u0004\u0012\u00020&0n8\u0006\u00a2\u0006\u000c\n\u0004\u0008o\u0010p\u001a\u0004\u0008q\u0010rR#\u0010v\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0\u00190n8\u0006\u00a2\u0006\u000c\n\u0004\u0008t\u0010p\u001a\u0004\u0008u\u0010rR\u001d\u0010y\u001a\u0008\u0012\u0004\u0012\u00020\u00160n8\u0006\u00a2\u0006\u000c\n\u0004\u0008w\u0010p\u001a\u0004\u0008x\u0010rR\u001d\u0010}\u001a\u0008\u0012\u0004\u0012\u00020z0n8\u0006\u00a2\u0006\u000c\n\u0004\u0008{\u0010p\u001a\u0004\u0008|\u0010rR\u001f\u0010\u0081\u0001\u001a\u0008\u0012\u0004\u0012\u00020~0n8\u0006\u00a2\u0006\r\n\u0004\u0008\u007f\u0010p\u001a\u0005\u0008\u0080\u0001\u0010rR \u0010\u0084\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00160n8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0082\u0001\u0010p\u001a\u0005\u0008\u0083\u0001\u0010rR!\u0010\u0088\u0001\u001a\t\u0012\u0005\u0012\u00030\u0085\u00010n8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0086\u0001\u0010p\u001a\u0005\u0008\u0087\u0001\u0010rR!\u0010\u008c\u0001\u001a\t\u0012\u0005\u0012\u00030\u0089\u00010n8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u008a\u0001\u0010p\u001a\u0005\u0008\u008b\u0001\u0010rR#\u0010\u0090\u0001\u001a\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u008d\u00010n8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u008e\u0001\u0010p\u001a\u0005\u0008\u008f\u0001\u0010rR/\u0010\u0095\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001010n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0091\u0001\u0010p\u001a\u0005\u0008\u0092\u0001\u0010r\"\u0006\u0008\u0093\u0001\u0010\u0094\u0001R.\u0010\u009a\u0001\u001a\t\u0012\u0005\u0012\u00030\u0096\u00010n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0097\u0001\u0010p\u001a\u0005\u0008\u0098\u0001\u0010r\"\u0006\u0008\u0099\u0001\u0010\u0094\u0001R4\u0010\u009f\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u009b\u00010\u000e0n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u009c\u0001\u0010p\u001a\u0005\u0008\u009d\u0001\u0010r\"\u0006\u0008\u009e\u0001\u0010\u0094\u0001R!\u0010\u00a3\u0001\u001a\t\u0012\u0005\u0012\u00030\u00a0\u00010n8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00a1\u0001\u0010p\u001a\u0005\u0008\u00a2\u0001\u0010rR&\u0010\u00a8\u0001\u001a\t\u0012\u0005\u0012\u00030\u00a4\u00010n8FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001\u001a\u0005\u0008\u00a7\u0001\u0010rR\'\u0010\u00ad\u0001\u001a\t\u0012\u0004\u0012\u0002010\u00a9\u00018FX\u0086\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00aa\u0001\u0010\u00a6\u0001\u001a\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R!\u0010\u00b2\u0001\u001a\u00030\u00ae\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00af\u0001\u0010\u00a6\u0001\u001a\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001R\'\u0010\u00b5\u0001\u001a\t\u0012\u0004\u0012\u00020\u000f0\u00a9\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00b3\u0001\u0010\u00a6\u0001\u001a\u0006\u0008\u00b4\u0001\u0010\u00ac\u0001R\u0017\u0010\u00b8\u0001\u001a\u00030\u00b6\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008t\u0010\u00b7\u0001R\u0017\u0010\u00bb\u0001\u001a\u00030\u00b9\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008w\u0010\u00ba\u0001R\u0019\u0010\u00be\u0001\u001a\u0005\u0018\u00010\u00bc\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008j\u0010\u00bd\u0001\u00a8\u0006\u00c1\u0001"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/TransferContactViewModel;",
        "Lteam/opay/pay/payment/ServiceViewModel;",
        "Lteam/opay/core/api/e;",
        "Landroid/app/Application;",
        "app",
        "sessionProvider",
        "Lteam/opay/pay/transfer/contact/TransferContactRepository;",
        "contactRepository",
        "Lteam/opay/pay/payment/TopupRepository;",
        "topupRepository",
        "Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/payment/TopupRepository;Lteam/opay/core/settings/SettingsStorage;)V",
        "",
        "",
        "codes",
        "",
        "g0",
        "(Ljava/util/List;)V",
        "Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;",
        "body",
        "",
        "saveData",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;",
        "V0",
        "(Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;Z)Landroidx/lifecycle/LiveData;",
        "Lag8;",
        "lifecycleOwner",
        "Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;",
        "req",
        "T0",
        "(Lag8;Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;)V",
        "fromAA",
        "owner",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
        "callback",
        "q0",
        "(ZLag8;Lkotlin/jvm/functions/Function1;)V",
        "update",
        "Q0",
        "(Lag8;Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;Z)V",
        "y0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "",
        "index",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "x0",
        "(I)Ljava/util/List;",
        "orderNo",
        "X0",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/transaction/SaveBeneficiaryReqV3;",
        "Y0",
        "(Lteam/opay/pay/transaction/SaveBeneficiaryReqV3;)Landroidx/lifecycle/LiveData;",
        "Lkotlin/Function2;",
        "c0",
        "(Lag8;Lkotlin/jvm/functions/Function2;)V",
        "Lteam/opay/pay/transfer/contact/bean/DeleteContactReq;",
        "a0",
        "(Lag8;Lteam/opay/pay/transfer/contact/bean/DeleteContactReq;)V",
        "Lteam/opay/pay/transfer/contact/bean/DeleteContactReqV2;",
        "Z",
        "(Lteam/opay/pay/transfer/contact/bean/DeleteContactReqV2;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/transfer/contact/bean/PreOrderReq;",
        "Landroid/view/View;",
        "loadView",
        "O0",
        "(Lag8;Lteam/opay/pay/transfer/contact/bean/PreOrderReq;Landroid/view/View;)V",
        "Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;",
        "V",
        "(Lag8;Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;)V",
        "X",
        "I0",
        "i0",
        "(Lag8;)V",
        "Landroid/content/Context;",
        "context",
        "needSubList",
        "z0",
        "(Landroid/content/Context;Z)Landroidx/lifecycle/LiveData;",
        "L0",
        "()Z",
        "M0",
        "Lkotlin/Function0;",
        "H0",
        "(Lag8;Lkotlin/jvm/functions/Function0;)V",
        "Lteam/opay/pay/api/HotBanksItemInfo;",
        "w0",
        "()Landroidx/lifecycle/LiveData;",
        "phone",
        "K0",
        "(Ljava/lang/String;)Z",
        "i",
        "Landroid/app/Application;",
        "j",
        "Lteam/opay/core/api/e;",
        "getSessionProvider",
        "()Lteam/opay/core/api/e;",
        "k",
        "Lteam/opay/pay/transfer/contact/TransferContactRepository;",
        "l",
        "Lteam/opay/pay/payment/TopupRepository;",
        "m",
        "Lteam/opay/core/settings/SettingsStorage;",
        "F0",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "Landroidx/lifecycle/MutableLiveData;",
        "n",
        "Landroidx/lifecycle/MutableLiveData;",
        "t0",
        "()Landroidx/lifecycle/MutableLiveData;",
        "contentDataEvent",
        "o",
        "u0",
        "contentResourceEvent",
        "p",
        "v0",
        "deleteTransferContactDataEvent",
        "Lteam/opay/pay/transfer/contact/bean/PreOrderRsp;",
        "q",
        "C0",
        "preOrderDataEvent",
        "",
        "r",
        "D0",
        "preOrderErrorEvent",
        "s",
        "n0",
        "checkContactsDataEvent",
        "Lteam/opay/pay/transfer/contact/bean/CheckContactsStatus;",
        "t",
        "o0",
        "checkContactsStatusDataEvent",
        "Lteam/opay/pay/transfer/contact/bean/CheckTransferIsOWealthRsp;",
        "u",
        "getCheckTransferIsOWealthDataEvent",
        "checkTransferIsOWealthDataEvent",
        "Lteam/opay/pay/api/FreeResponse;",
        "v",
        "m0",
        "checkAcFeeDataEvent",
        "w",
        "l0",
        "setBeneficiaryItemClick",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "beneficiaryItemClick",
        "Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;",
        "x",
        "e0",
        "setAaBeneficiaryItemClickEvent",
        "aaBeneficiaryItemClickEvent",
        "Lteam/opay/odialog/net/AdDataItem;",
        "y",
        "p0",
        "setContactBannerData",
        "contactBannerData",
        "Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;",
        "z",
        "k0",
        "autoSubscribeNewUserPopDataEvent",
        "Lteam/opay/odialog/net/ADListResponse;",
        "A",
        "Lid8;",
        "f0",
        "adData",
        "",
        "B",
        "E0",
        "()Ljava/util/List;",
        "searchContactDataList",
        "Lteam/opay/core/settings/NoClearStorage;",
        "C",
        "B0",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "noClearStorage",
        "D",
        "G0",
        "suportNumbers",
        "Lteam/opay/core/api/Country;",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
        "E",
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
.field public static final E:Lteam/opay/pay/transfer/contact/TransferContactViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final A:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final B:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final C:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final D:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lteam/opay/pay/transfer/contact/TransferContactRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lteam/opay/pay/payment/TopupRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lteam/opay/core/settings/SettingsStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Landroidx/lifecycle/MutableLiveData;
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

.field public final q:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/transfer/contact/bean/PreOrderRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Landroidx/lifecycle/MutableLiveData;
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

.field public final t:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/transfer/contact/bean/CheckContactsStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/transfer/contact/bean/CheckTransferIsOWealthRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/api/FreeResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final z:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/contact/TransferContactViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->E:Lteam/opay/pay/transfer/contact/TransferContactViewModel$Companion;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->F:Ljava/util/List;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->G:Ljava/util/List;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->H:Ljava/util/List;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/payment/TopupRepository;Lteam/opay/core/settings/SettingsStorage;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/transfer/contact/TransferContactRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/payment/TopupRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lteam/opay/core/settings/SettingsStorage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "contactRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "topupRepository"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "settingsStorage"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/payment/ServiceViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/api/e;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->i:Landroid/app/Application;

    .line 30
    .line 31
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->j:Lteam/opay/core/api/e;

    .line 32
    .line 33
    iput-object p3, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->k:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 34
    .line 35
    iput-object p4, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->l:Lteam/opay/pay/payment/TopupRepository;

    .line 36
    .line 37
    iput-object p5, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->m:Lteam/opay/core/settings/SettingsStorage;

    .line 38
    .line 39
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 75
    .line 76
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 87
    .line 88
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 94
    .line 95
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 96
    .line 97
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 101
    .line 102
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 103
    .line 104
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 108
    .line 109
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 110
    .line 111
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 115
    .line 116
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 117
    .line 118
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    .line 122
    .line 123
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 124
    .line 125
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 129
    .line 130
    new-instance p1, Li5f;

    .line 131
    .line 132
    invoke-direct {p1}, Li5f;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->A:Lid8;

    .line 140
    .line 141
    new-instance p1, Lj5f;

    .line 142
    .line 143
    invoke-direct {p1}, Lj5f;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->B:Lid8;

    .line 151
    .line 152
    new-instance p1, Lk5f;

    .line 153
    .line 154
    invoke-direct {p1, p0}, Lk5f;-><init>(Lteam/opay/pay/transfer/contact/TransferContactViewModel;)V

    .line 155
    .line 156
    .line 157
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->C:Lid8;

    .line 162
    .line 163
    new-instance p1, Ll5f;

    .line 164
    .line 165
    invoke-direct {p1}, Ll5f;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->D:Lid8;

    .line 173
    .line 174
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/transfer/contact/TransferContactViewModel;)Lteam/opay/core/settings/NoClearStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->N0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;)Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic A0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Landroid/content/Context;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->z0(Landroid/content/Context;Z)Landroidx/lifecycle/LiveData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->W(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B0()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->C:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/NoClearStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic C(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->h0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->Y(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Landroid/view/View;Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->P0(Landroid/view/View;Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F(ZLteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->S0(ZLteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->J0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->a1()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic I(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->j0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic J(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->U0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final J0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lteam/opay/pay/transfer/contact/TransferContactViewModel$a;->a:[I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    aget v0, v1, v0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public static synthetic K(Lkotlin/jvm/functions/Function2;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->d0(Lkotlin/jvm/functions/Function2;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(ZLteam/opay/pay/transfer/contact/TransferContactViewModel;Lag8;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->r0(ZLteam/opay/pay/transfer/contact/TransferContactViewModel;Lag8;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->s0(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->U()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final N0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;)Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->i:Landroid/app/Application;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static synthetic O()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->Z0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic P()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->H:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final P0(Landroid/view/View;Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 12

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p0, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lteam/opay/pay/transfer/contact/TransferContactViewModel$a;->a:[I

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    aget v0, v1, v0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_d

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_1
    sget-object v0, Ld00;->a:Ld00;

    .line 35
    .line 36
    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    instance-of v2, v0, Landroidx/fragment/app/FragmentActivity;

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object v0, v1

    .line 49
    :goto_0
    if-eqz v0, :cond_3

    .line 50
    .line 51
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move-object v0, v1

    .line 55
    :goto_1
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "130006"

    .line 60
    .line 61
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const-string v3, ""

    .line 66
    .line 67
    if-eqz v2, :cond_6

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    sget-object v4, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->k:Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;

    .line 72
    .line 73
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-nez p0, :cond_4

    .line 78
    .line 79
    move-object v5, v3

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move-object v5, p0

    .line 82
    :goto_2
    const/16 v10, 0x1c

    .line 83
    .line 84
    const/4 v11, 0x0

    .line 85
    const/4 v6, 0x1

    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v9, 0x0

    .line 89
    invoke-static/range {v4 .. v11}, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;->b(Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v0, p0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    iget-object p0, p1, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_6
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const-string v4, "130007"

    .line 107
    .line 108
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_9

    .line 113
    .line 114
    if-eqz v0, :cond_8

    .line 115
    .line 116
    sget-object v4, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;->k:Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;

    .line 117
    .line 118
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    if-nez p0, :cond_7

    .line 123
    .line 124
    move-object v5, v3

    .line 125
    goto :goto_3

    .line 126
    :cond_7
    move-object v5, p0

    .line 127
    :goto_3
    const/16 v10, 0x1c

    .line 128
    .line 129
    const/4 v11, 0x0

    .line 130
    const/4 v6, 0x0

    .line 131
    const/4 v7, 0x0

    .line 132
    const/4 v8, 0x0

    .line 133
    const/4 v9, 0x0

    .line 134
    invoke-static/range {v4 .. v11}, Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;->b(Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog$Companion;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/BeforeCheckerKycUpgradeDialog;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {v0, p0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 139
    .line 140
    .line 141
    :cond_8
    iget-object p0, p1, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_9
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-eqz p1, :cond_c

    .line 152
    .line 153
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_a

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_a
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-nez p1, :cond_b

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_b
    move-object v3, p1

    .line 168
    goto :goto_5

    .line 169
    :cond_c
    :goto_4
    const-string v3, "An error occurred in the system, please try again later."

    .line 170
    .line 171
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {p0, v3}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_d
    iget-object p0, p1, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    .line 180
    .line 181
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :goto_6
    return-void
.end method

.method public static final synthetic Q()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->G:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic R(Lteam/opay/pay/transfer/contact/TransferContactViewModel;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->G0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lag8;Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->Q0(Lag8;Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic S(Ljava/util/List;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->H:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static final S0(ZLteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget-object v0, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 9
    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    :cond_1
    iget-object p0, p1, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_5

    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->E0()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->E0()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 49
    .line 50
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->b()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_3
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 65
    .line 66
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->c()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    :cond_4
    invoke-static {v0, v1}, Ljmf;->v(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    .line 82
    .line 83
    :cond_5
    iget-object p0, p1, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 84
    .line 85
    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static final synthetic T(Ljava/util/List;)V
    .locals 0

    .line 1
    sput-object p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->G:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static final U()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final U0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->E0()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->E0()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 29
    .line 30
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->b()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 45
    .line 46
    invoke-virtual {v2}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->c()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :cond_2
    invoke-static {v1, v2}, Ljmf;->v(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lteam/opay/pay/transfer/contact/TransferContactViewModel$a;->a:[I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    aget v0, v1, v0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public static synthetic W0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->V0(Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;Z)Landroidx/lifecycle/LiveData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final Y(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lteam/opay/pay/transfer/contact/TransferContactViewModel$a;->a:[I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    aget v0, v1, v0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public static final Z0()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final a1()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final b0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lteam/opay/pay/transfer/contact/TransferContactViewModel$a;->a:[I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    aget v0, v1, v0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v0, v1, :cond_3

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lteam/opay/pay/android/ToastUtils;->b:Lteam/opay/pay/android/ToastUtils$Companion;

    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/pay/android/ToastUtils$Companion;->a()Lteam/opay/pay/android/ToastUtils;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    const-string p1, ""

    .line 46
    .line 47
    :cond_2
    const/4 v0, 0x0

    .line 48
    invoke-static {p0, p1, v0, v1, v0}, Lteam/opay/pay/android/ToastUtils;->h(Lteam/opay/pay/android/ToastUtils;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 53
    .line 54
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public static final d0(Lkotlin/jvm/functions/Function2;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    sget-object v2, Lteam/opay/pay/transfer/contact/TransferContactViewModel$a;->a:[I

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    aget v1, v2, v1

    .line 21
    .line 22
    :goto_1
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_3

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    if-eq v1, p1, :cond_2

    .line 27
    .line 28
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_2
    invoke-interface {p0, v0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lteam/opay/pay/api/AAShareInfo;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v1}, Lteam/opay/pay/api/AAShareInfo;->a()Lteam/opay/pay/api/AATransferShare;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    invoke-virtual {v1}, Lteam/opay/pay/api/AATransferShare;->a()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto :goto_2

    .line 55
    :cond_4
    move-object v1, v0

    .line 56
    :goto_2
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lteam/opay/pay/api/AAShareInfo;

    .line 61
    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    invoke-virtual {p1}, Lteam/opay/pay/api/AAShareInfo;->a()Lteam/opay/pay/api/AATransferShare;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_5

    .line 69
    .line 70
    invoke-virtual {p1}, Lteam/opay/pay/api/AATransferShare;->b()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_5
    if-nez v0, :cond_6

    .line 75
    .line 76
    const-string v0, ""

    .line 77
    .line 78
    :cond_6
    invoke-interface {p0, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0
.end method

.method public static final h0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lteam/opay/pay/transfer/contact/TransferContactViewModel$a;->a:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->f0()Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    .line 36
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method

.method public static final j0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lteam/opay/pay/transfer/contact/TransferContactViewModel$a;->a:[I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    aget v0, v1, v0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public static final r0(ZLteam/opay/pay/transfer/contact/TransferContactViewModel;Lag8;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Lkotlin/Unit;
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;

    .line 4
    .line 5
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceId;->COINS_SEND:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceId;->getValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_SEND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {p0, v0, v1}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;

    .line 22
    .line 23
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceId;->BANK:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 24
    .line 25
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$ServiceId;->getValue()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->BANK:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 30
    .line 31
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {p0, v0, v1}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 48
    .line 49
    iget-object p1, p1, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->i:Landroid/app/Application;

    .line 50
    .line 51
    const-class v2, Lfv;

    .line 52
    .line 53
    invoke-virtual {v1, p1, v2}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lfv;

    .line 58
    .line 59
    invoke-interface {p1, p0}, Lfv;->R0(Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;)Lretrofit2/Call;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-class p1, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->c(Ljava/lang/Class;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lteam/opay/core/android/arch/RequestBuilder;->d()Lteam/opay/core/android/arch/RequestBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    new-instance p1, Lh5f;

    .line 82
    .line 83
    invoke-direct {p1, p4, p3}, Lh5f;-><init>(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;Lkotlin/jvm/functions/Function1;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p0, p2, p1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 87
    .line 88
    .line 89
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p0
.end method

.method public static final s0(Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    sget-object v2, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    if-eq v1, v2, :cond_a

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object p2, v0

    .line 24
    :goto_1
    new-instance v1, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->c()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move-object v2, v0

    .line 34
    :goto_2
    if-nez v2, :cond_3

    .line 35
    .line 36
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_3
    if-eqz p0, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->c()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_3

    .line 47
    :cond_4
    move-object v3, v0

    .line 48
    :goto_3
    if-nez v3, :cond_5

    .line 49
    .line 50
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    :cond_5
    invoke-static {v2, v3}, Ljmf;->v(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz p2, :cond_6

    .line 59
    .line 60
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->b()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    goto :goto_4

    .line 65
    :cond_6
    move-object p2, v0

    .line 66
    :goto_4
    if-nez p2, :cond_7

    .line 67
    .line 68
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    :cond_7
    if-eqz p0, :cond_8

    .line 73
    .line 74
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->b()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    goto :goto_5

    .line 79
    :cond_8
    move-object p0, v0

    .line 80
    :goto_5
    if-nez p0, :cond_9

    .line 81
    .line 82
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    :cond_9
    invoke-static {p2, p0}, Ljmf;->v(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    sget-object p2, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 91
    .line 92
    invoke-virtual {p2}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-direct {v1, v0, v2, p0, p2}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;-><init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 107
    .line 108
    return-object p0
.end method

.method public static synthetic z(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->b0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lteam/opay/core/android/arch/Resource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final C0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/transfer/contact/bean/PreOrderRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->B:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public final F0()Lteam/opay/core/settings/SettingsStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->m:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->D:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H0(Lag8;Lkotlin/jvm/functions/Function0;)V
    .locals 11
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    .line 13
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v8, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    move-object v1, v8

    .line 24
    move-object v2, p0

    .line 25
    move-object v3, p1

    .line 26
    move-object v5, p2

    .line 27
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;-><init>(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lag8;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Ljr2;)V

    .line 28
    .line 29
    .line 30
    const/4 v9, 0x3

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    move-object v5, v0

    .line 34
    invoke-static/range {v5 .. v10}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final I0(Lag8;Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "req"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->k:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->s(Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;)Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, Lm5f;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lm5f;-><init>(Lteam/opay/pay/transfer/contact/TransferContactViewModel;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final K0(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "phone"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->G0()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->G0()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-static {p1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    return v1

    .line 50
    :cond_2
    return v3

    .line 51
    :cond_3
    :goto_0
    return v1
.end method

.method public final L0()Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lteam/opay/oconfig/a;->a:Lteam/opay/oconfig/a;

    .line 3
    .line 4
    const-string v2, "aa_auto_invest_dialog_config_data"

    .line 5
    .line 6
    const-string v3, ""

    .line 7
    .line 8
    invoke-virtual {v1, v2, v3}, Lteam/opay/oconfig/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, " gpConfigString = "

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/google/gson/Gson;

    .line 28
    .line 29
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 30
    .line 31
    .line 32
    const-class v3, Lteam/opay/pay/transfer/contact/AAAutoInvestDialogConfigData;

    .line 33
    .line 34
    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lteam/opay/pay/transfer/contact/AAAutoInvestDialogConfigData;

    .line 39
    .line 40
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->B0()Lteam/opay/core/settings/NoClearStorage;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lteam/opay/core/settings/NoClearStorage;->g()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/AAAutoInvestDialogConfigData;->c()Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/4 v4, 0x3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_0
    const/4 v3, 0x3

    .line 64
    :goto_0
    const/4 v5, 0x1

    .line 65
    if-ge v2, v3, :cond_1

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/4 v2, 0x0

    .line 70
    :goto_1
    sget-object v3, Lteam/opay/pay/util/DataUtil;->a:Lteam/opay/pay/util/DataUtil$Companion;

    .line 71
    .line 72
    invoke-virtual {v3}, Lteam/opay/pay/util/DataUtil$Companion;->a()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->B0()Lteam/opay/core/settings/NoClearStorage;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6}, Lteam/opay/core/settings/NoClearStorage;->h()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    sub-int/2addr v3, v6

    .line 85
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/AAAutoInvestDialogConfigData;->b()Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    if-eqz v6, :cond_2

    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    const/16 v6, 0x12

    .line 97
    .line 98
    :goto_2
    if-lt v3, v6, :cond_3

    .line 99
    .line 100
    const/4 v3, 0x1

    .line 101
    goto :goto_3

    .line 102
    :cond_3
    const/4 v3, 0x0

    .line 103
    :goto_3
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->B0()Lteam/opay/core/settings/NoClearStorage;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6}, Lteam/opay/core/settings/NoClearStorage;->L()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/AAAutoInvestDialogConfigData;->a()Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    if-eqz v7, :cond_4

    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    :cond_4
    if-ge v6, v4, :cond_5

    .line 122
    .line 123
    const/4 v4, 0x1

    .line 124
    goto :goto_4

    .line 125
    :cond_5
    const/4 v4, 0x0

    .line 126
    :goto_4
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/AAAutoInvestDialogConfigData;->d()Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v8, "configData.is_open = "

    .line 136
    .line 137
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v7, "isShowMaxTimesEnable = "

    .line 149
    .line 150
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v7, "isCloseMaxTimesEnable = "

    .line 162
    .line 163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v7, "isShowIntervalEnable = "

    .line 175
    .line 176
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/AAAutoInvestDialogConfigData;->d()Ljava/lang/Boolean;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 187
    .line 188
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    if-eqz v1, :cond_6

    .line 193
    .line 194
    if-eqz v2, :cond_6

    .line 195
    .line 196
    if-eqz v4, :cond_6

    .line 197
    .line 198
    if-eqz v3, :cond_6

    .line 199
    .line 200
    return v5

    .line 201
    :cond_6
    return v0

    .line 202
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    .line 204
    .line 205
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 206
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v3, "isShowAAAutoInvestDialog e = "

    .line 213
    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    return v0
.end method

.method public final M0()Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lteam/opay/oconfig/a;->a:Lteam/opay/oconfig/a;

    .line 3
    .line 4
    const-string v2, "receive_money_auto_invest_dialog_config_data"

    .line 5
    .line 6
    const-string v3, ""

    .line 7
    .line 8
    invoke-virtual {v1, v2, v3}, Lteam/opay/oconfig/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, " gpConfigString = "

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/google/gson/Gson;

    .line 28
    .line 29
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 30
    .line 31
    .line 32
    const-class v3, Lteam/opay/pay/transfer/contact/ReceiveMoneyAutoInvestDialogConfigData;

    .line 33
    .line 34
    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lteam/opay/pay/transfer/contact/ReceiveMoneyAutoInvestDialogConfigData;

    .line 39
    .line 40
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->B0()Lteam/opay/core/settings/NoClearStorage;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lteam/opay/core/settings/NoClearStorage;->s0()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/ReceiveMoneyAutoInvestDialogConfigData;->c()Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/4 v4, 0x3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_0
    const/4 v3, 0x3

    .line 64
    :goto_0
    const/4 v5, 0x1

    .line 65
    if-ge v2, v3, :cond_1

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/4 v2, 0x0

    .line 70
    :goto_1
    sget-object v3, Lteam/opay/pay/util/DataUtil;->a:Lteam/opay/pay/util/DataUtil$Companion;

    .line 71
    .line 72
    invoke-virtual {v3}, Lteam/opay/pay/util/DataUtil$Companion;->a()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->B0()Lteam/opay/core/settings/NoClearStorage;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6}, Lteam/opay/core/settings/NoClearStorage;->t0()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    sub-int/2addr v3, v6

    .line 85
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/ReceiveMoneyAutoInvestDialogConfigData;->b()Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    if-eqz v6, :cond_2

    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    const/16 v6, 0x12

    .line 97
    .line 98
    :goto_2
    if-lt v3, v6, :cond_3

    .line 99
    .line 100
    const/4 v3, 0x1

    .line 101
    goto :goto_3

    .line 102
    :cond_3
    const/4 v3, 0x0

    .line 103
    :goto_3
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->B0()Lteam/opay/core/settings/NoClearStorage;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6}, Lteam/opay/core/settings/NoClearStorage;->M()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/ReceiveMoneyAutoInvestDialogConfigData;->a()Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    if-eqz v7, :cond_4

    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    :cond_4
    if-ge v6, v4, :cond_5

    .line 122
    .line 123
    const/4 v4, 0x1

    .line 124
    goto :goto_4

    .line 125
    :cond_5
    const/4 v4, 0x0

    .line 126
    :goto_4
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/ReceiveMoneyAutoInvestDialogConfigData;->d()Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v8, "configData.is_open = "

    .line 136
    .line 137
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v7, "isShowMaxTimesEnable = "

    .line 149
    .line 150
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v7, "isCloseMaxTimesEnable = "

    .line 162
    .line 163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v7, "isShowIntervalEnable = "

    .line 175
    .line 176
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/ReceiveMoneyAutoInvestDialogConfigData;->d()Ljava/lang/Boolean;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 187
    .line 188
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    if-eqz v1, :cond_6

    .line 193
    .line 194
    if-eqz v2, :cond_6

    .line 195
    .line 196
    if-eqz v4, :cond_6

    .line 197
    .line 198
    if-eqz v3, :cond_6

    .line 199
    .line 200
    return v5

    .line 201
    :cond_6
    return v0

    .line 202
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    .line 204
    .line 205
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 206
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v3, "isShowReceiveMoneyAutoInvestDialog e = "

    .line 213
    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    return v0
.end method

.method public final O0(Lag8;Lteam/opay/pay/transfer/contact/bean/PreOrderReq;Landroid/view/View;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/bean/PreOrderReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "req"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "loadView"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->k:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->t(Lteam/opay/pay/transfer/contact/bean/PreOrderReq;)Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance v0, Ld5f;

    .line 23
    .line 24
    invoke-direct {v0, p3, p0}, Ld5f;-><init>(Landroid/view/View;Lteam/opay/pay/transfer/contact/TransferContactViewModel;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final Q0(Lag8;Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;Z)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "req"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->k:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->u(Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;)Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, Ln5f;

    .line 18
    .line 19
    invoke-direct {v0, p3, p0}, Ln5f;-><init>(ZLteam/opay/pay/transfer/contact/TransferContactViewModel;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final T0(Lag8;Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;)V
    .locals 4
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "req"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 21
    .line 22
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->i:Landroid/app/Application;

    .line 23
    .line 24
    const-class v3, Lfv;

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lfv;

    .line 31
    .line 32
    invoke-interface {v1, p2}, Lfv;->R0(Lteam/opay/pay/transfer/contact/bean/TransferPersonsReq;)Lretrofit2/Call;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {v0, p2}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-class v0, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Lteam/opay/core/android/arch/RequestBuilder;->c(Ljava/lang/Class;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    new-instance v0, Lb5f;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lb5f;-><init>(Lteam/opay/pay/transfer/contact/TransferContactViewModel;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p2, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final V(Lag8;Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "req"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->k:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->j(Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;)Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, Lo5f;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lo5f;-><init>(Lteam/opay/pay/transfer/contact/TransferContactViewModel;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final V0(Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;Z)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;",
            "Z)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->k:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->v(Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;Z)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final X(Lag8;Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "req"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->k:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->k(Lteam/opay/pay/transfer/contact/bean/CheckContactsReq;)Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, Lc5f;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lc5f;-><init>(Lteam/opay/pay/transfer/contact/TransferContactViewModel;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final X0(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "orderNo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->k:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->x(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final Y0(Lteam/opay/pay/transaction/SaveBeneficiaryReqV3;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/pay/transaction/SaveBeneficiaryReqV3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transaction/SaveBeneficiaryReqV3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->k:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->y(Lteam/opay/pay/transaction/SaveBeneficiaryReqV3;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final Z(Lteam/opay/pay/transfer/contact/bean/DeleteContactReqV2;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/pay/transfer/contact/bean/DeleteContactReqV2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/bean/DeleteContactReqV2;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->k:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->m(Lteam/opay/pay/transfer/contact/bean/DeleteContactReqV2;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final a0(Lag8;Lteam/opay/pay/transfer/contact/bean/DeleteContactReq;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/bean/DeleteContactReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "req"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->k:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->l(Lteam/opay/pay/transfer/contact/bean/DeleteContactReq;)Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, Lq5f;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lq5f;-><init>(Lteam/opay/pay/transfer/contact/TransferContactViewModel;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final c0(Lag8;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 21
    .line 22
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->i:Landroid/app/Application;

    .line 23
    .line 24
    const-class v3, Lfv;

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lfv;

    .line 31
    .line 32
    invoke-interface {v1}, Lfv;->k1()Lretrofit2/Call;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lf5f;

    .line 45
    .line 46
    invoke-direct {v1, p2}, Lf5f;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final e0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/transfer/contact/BeneficiaryItemClickedEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/odialog/net/ADListResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->A:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final g0(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "codes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 16
    .line 17
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->i:Landroid/app/Application;

    .line 18
    .line 19
    const-class v3, Lfv;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lfv;

    .line 26
    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/16 v3, 0xa

    .line 30
    .line 31
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    .line 54
    new-instance v4, Lteam/opay/pay/api/AnnouncementReq;

    .line 55
    .line 56
    invoke-direct {v4, v3}, Lteam/opay/pay/api/AnnouncementReq;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Lteam/opay/pay/api/AllAnnouncementReq;

    .line 64
    .line 65
    invoke-direct {p1, v2}, Lteam/opay/pay/api/AllAnnouncementReq;-><init>(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, p1}, Lfv;->H1(Lteam/opay/pay/api/AllAnnouncementReq;)Lretrofit2/Call;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v0, "200"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->e(Ljava/lang/String;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance v0, Le5f;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Le5f;-><init>(Lteam/opay/pay/transfer/contact/TransferContactViewModel;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1, v0}, Lqna;->b(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final i0(Lag8;)V
    .locals 2
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->k:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->n()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lp5f;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lp5f;-><init>(Lteam/opay/pay/transfer/contact/TransferContactViewModel;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final k0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/api/AutoSubscribeNewUserPopRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->j:Lteam/opay/core/api/e;

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

.method public final m0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/api/FreeResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n0()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->j:Lteam/opay/core/api/e;

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

.method public final o0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/transfer/contact/bean/CheckContactsStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->j:Lteam/opay/core/api/e;

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

.method public final p0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q0(ZLag8;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lag8;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->k:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 12
    .line 13
    new-instance v1, Lg5f;

    .line 14
    .line 15
    invoke-direct {v1, p1, p0, p2, p3}, Lg5f;-><init>(ZLteam/opay/pay/transfer/contact/TransferContactViewModel;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->o(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final t0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v0()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w0()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/util/List<",
            "Lteam/opay/pay/api/HotBanksItemInfo;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->l:Lteam/opay/pay/payment/TopupRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/payment/TopupRepository;->j()Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final x0(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    const/4 v1, 0x0

    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->c()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object p1, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->b()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_0
    return-object p1
.end method

.method public final y0(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->k:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->o(Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final z0(Landroid/content/Context;Z)Landroidx/lifecycle/LiveData;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v3, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getLocalContactList$1;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v3, p0, p2, p1, v1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getLocalContactList$1;-><init>(Lteam/opay/pay/transfer/contact/TransferContactViewModel;ZLandroidx/lifecycle/MutableLiveData;Ljr2;)V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 25
    .line 26
    .line 27
    return-object p1
.end method
