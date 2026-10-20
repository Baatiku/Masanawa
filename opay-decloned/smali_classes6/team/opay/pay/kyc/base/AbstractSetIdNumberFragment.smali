.class public abstract Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;
.super Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;
.source "AbstractSetIdNumberFragment.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment<",
        "Llh6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ce\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\'\u0018\u0000 \u00c8\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u00c9\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u0005H\u0082@\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u000fJ\u000f\u0010\u0012\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0017J\u0017\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0017\u0010%\u001a\u00020\u00052\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010\'\u001a\u00020\u00052\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008\'\u0010&J\u0017\u0010(\u001a\u00020\u00052\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008(\u0010&J)\u0010,\u001a\u00020\u00052\u0008\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008,\u0010-J/\u0010/\u001a\u00020\u00052\u0006\u0010$\u001a\u00020#2\u0006\u0010.\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00101\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u00081\u0010\u0004J\u000f\u00103\u001a\u000202H\u0002\u00a2\u0006\u0004\u00083\u00104J\u000f\u00105\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u00085\u0010\u0004J\u001b\u00107\u001a\u00020\u00052\n\u0008\u0002\u00106\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u00087\u0010\u0017J%\u00109\u001a\u00020\u00052\n\u0008\u0002\u00106\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u00108\u001a\u000202H\u0002\u00a2\u0006\u0004\u00089\u0010:J\u001f\u0010=\u001a\u00020\u00052\u0006\u0010<\u001a\u00020;2\u0006\u0010 \u001a\u00020\u001fH&\u00a2\u0006\u0004\u0008=\u0010>J+\u0010A\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\r2\u0008\u0010?\u001a\u0004\u0018\u00010\r2\u0008\u0010@\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008A\u0010BJ\u0017\u0010D\u001a\u00020\u00052\u0006\u0010C\u001a\u000202H\u0016\u00a2\u0006\u0004\u0008D\u0010EJ!\u0010J\u001a\u00020\u00052\u0006\u0010G\u001a\u00020F2\u0008\u0010I\u001a\u0004\u0018\u00010HH\u0016\u00a2\u0006\u0004\u0008J\u0010KJ\u000f\u0010L\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008L\u0010\u0004J\u000f\u0010M\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008M\u0010\u0004J\u0015\u0010O\u001a\u0008\u0012\u0004\u0012\u00020#0NH\u0016\u00a2\u0006\u0004\u0008O\u0010PJ\u000f\u0010Q\u001a\u000202H\u0016\u00a2\u0006\u0004\u0008Q\u00104J)\u0010W\u001a\u00020\u00052\u0006\u0010S\u001a\u00020R2\u0006\u0010T\u001a\u00020F2\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008W\u0010XJ\u0017\u0010Z\u001a\u0002022\u0006\u0010\u001c\u001a\u00020YH\u0016\u00a2\u0006\u0004\u0008Z\u0010[J!\u0010]\u001a\u00020\u00052\u0008\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010\\\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008]\u0010^J\u000f\u0010_\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008_\u0010\u0004J\u001d\u0010b\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\r2\u0006\u0010a\u001a\u00020`\u00a2\u0006\u0004\u0008b\u0010cJ)\u0010h\u001a\u00020\u00052\u0006\u0010d\u001a\u00020)2\u0006\u0010e\u001a\u00020)2\u0008\u0010g\u001a\u0004\u0018\u00010fH\u0017\u00a2\u0006\u0004\u0008h\u0010iJ\u001f\u0010j\u001a\u00020\u00052\u0006\u0010$\u001a\u00020#2\u0006\u0010+\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008j\u0010^J\u0017\u0010k\u001a\u00020\u00052\u0006\u0010<\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008k\u0010lJ\u000f\u0010m\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008m\u0010\u000fJ\u000f\u0010n\u001a\u000202H\u0016\u00a2\u0006\u0004\u0008n\u00104J\u0011\u0010o\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008o\u0010\u000fJ\r\u0010p\u001a\u00020\r\u00a2\u0006\u0004\u0008p\u0010\u000fR\u001b\u0010v\u001a\u00020q8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008r\u0010s\u001a\u0004\u0008t\u0010uR(\u0010}\u001a\u0008\u0012\u0004\u0012\u00020#0w8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008x\u0010y\u001a\u0004\u0008z\u0010P\"\u0004\u0008{\u0010|R\'\u0010\u0084\u0001\u001a\u00020)8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0004\u0008~\u0010\u007f\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001\"\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u001b\u0010\u0087\u0001\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u0019\u0010\u008a\u0001\u001a\u0002028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u001b\u0010\u008d\u0001\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R \u0010\u0092\u0001\u001a\u00030\u008e\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u008f\u0001\u0010s\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001R \u0010\u0097\u0001\u001a\u00030\u0093\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0094\u0001\u0010s\u001a\u0006\u0008\u0095\u0001\u0010\u0096\u0001R \u0010\u009c\u0001\u001a\u00030\u0098\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0099\u0001\u0010s\u001a\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\'\u0010\u00a0\u0001\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u009d\u0001\u0010\u008c\u0001\u001a\u0005\u0008\u009e\u0001\u0010\u000f\"\u0005\u0008\u009f\u0001\u0010\u0017R%\u0010$\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008T\u0010\u008c\u0001\u001a\u0005\u0008\u00a1\u0001\u0010\u000f\"\u0005\u0008\u00a2\u0001\u0010\u0017R&\u0010\\\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00a3\u0001\u0010\u008c\u0001\u001a\u0005\u0008\u00a4\u0001\u0010\u000f\"\u0005\u0008\u00a5\u0001\u0010\u0017R*\u0010\u00ad\u0001\u001a\u00030\u00a6\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001\u001a\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001\"\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R,\u0010\u00b5\u0001\u001a\u0005\u0018\u00010\u00ae\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\u001a\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001\"\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001R*\u0010\u00bb\u0001\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001\u001a\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001\"\u0005\u0008\u00ba\u0001\u0010&R)\u0010\u00bf\u0001\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00bc\u0001\u0010\u008c\u0001\u001a\u0005\u0008\u00bd\u0001\u0010\u000f\"\u0005\u0008\u00be\u0001\u0010\u0017R*\u0010\u00c7\u0001\u001a\u00030\u00c0\u00018\u0006@\u0006X\u0086.\u00a2\u0006\u0018\n\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001\u001a\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001\"\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001\u00a8\u0006\u00ca\u0001"
    }
    d2 = {
        "Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;",
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;",
        "Llh6;",
        "<init>",
        "()V",
        "",
        "v1",
        "k2",
        "initView",
        "K1",
        "S1",
        "U0",
        "(Ljr2;)Ljava/lang/Object;",
        "",
        "l1",
        "()Ljava/lang/String;",
        "X0",
        "e1",
        "x1",
        "j2",
        "i2",
        "clipText",
        "h2",
        "(Ljava/lang/String;)V",
        "t1",
        "inputNum",
        "T1",
        "Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;",
        "item",
        "Z0",
        "(Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;)Ljava/lang/String;",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "rsp",
        "l2",
        "(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V",
        "Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
        "idType",
        "L1",
        "(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V",
        "N1",
        "Q1",
        "",
        "forgotScene",
        "channel",
        "e2",
        "(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;ILjava/lang/String;)V",
        "forgotClickPosition",
        "V0",
        "(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;IILjava/lang/String;)V",
        "s1",
        "",
        "W0",
        "()Z",
        "F1",
        "manualRefreshChannel",
        "X1",
        "fromForget",
        "Z1",
        "(Ljava/lang/String;Z)V",
        "Lteam/opay/pay/kyc/base/IdNumberVerifyReq;",
        "req",
        "O1",
        "(Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V",
        "bankCode",
        "bankAccount",
        "m2",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
        "r1",
        "",
        "f1",
        "()Ljava/util/List;",
        "onBackPressed",
        "Landroid/view/ContextMenu;",
        "menu",
        "v",
        "Landroid/view/ContextMenu$ContextMenuInfo;",
        "menuInfo",
        "onCreateContextMenu",
        "(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V",
        "Landroid/view/MenuItem;",
        "onContextItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "idNumber",
        "E1",
        "(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;Ljava/lang/String;)V",
        "addObserver",
        "Lteam/opay/pay/kyc/customer/CertMethodRsp;",
        "cerMethod",
        "I1",
        "(Ljava/lang/String;Lteam/opay/pay/kyc/customer/CertMethodRsp;)V",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "H1",
        "J1",
        "(Lteam/opay/pay/kyc/base/IdNumberVerifyReq;)V",
        "q1",
        "T0",
        "i1",
        "b1",
        "Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;",
        "l",
        "Lid8;",
        "j1",
        "()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;",
        "setIdViewModel",
        "",
        "m",
        "Ljava/util/List;",
        "d1",
        "setIdTypeList",
        "(Ljava/util/List;)V",
        "idTypeList",
        "n",
        "I",
        "c1",
        "()I",
        "setIdTypeIndex",
        "(I)V",
        "idTypeIndex",
        "o",
        "Lteam/opay/pay/kyc/base/IdNumberVerifyReq;",
        "idNumberVerifyReq",
        "p",
        "Z",
        "infomationFillInActioned",
        "q",
        "Ljava/lang/String;",
        "lastType",
        "Lteam/opay/core/settings/NoClearStorage;",
        "r",
        "k1",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "settingStorage",
        "Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;",
        "s",
        "a1",
        "()Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;",
        "idTypeAdapter",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "t",
        "h1",
        "()Lteam/opay/pay/kyc/base/KycNodeData;",
        "nodeData",
        "u",
        "getBizSecurityId",
        "P1",
        "bizSecurityId",
        "getIdType",
        "setIdType",
        "w",
        "getIdNumber",
        "setIdNumber",
        "",
        "x",
        "J",
        "n1",
        "()J",
        "c2",
        "(J)V",
        "taskRecordId",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "y",
        "Lteam/opay/pay/kyc/base/KycTaskNode;",
        "m1",
        "()Lteam/opay/pay/kyc/base/KycTaskNode;",
        "b2",
        "(Lteam/opay/pay/kyc/base/KycTaskNode;)V",
        "taskNodeData",
        "z",
        "Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
        "getLastInputType",
        "()Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
        "W1",
        "lastInputType",
        "A",
        "getLastInputNumbner",
        "V1",
        "lastInputNumbner",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "B",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "g1",
        "()Lteam/opay/pay/account/KeyBoardHelper;",
        "U1",
        "(Lteam/opay/pay/account/KeyBoardHelper;)V",
        "keyBoardHelper",
        "C",
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
.field public static final C:Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public B:Lteam/opay/pay/account/KeyBoardHelper;

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:I

.field public o:Lteam/opay/pay/kyc/base/IdNumberVerifyReq;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Z

.field public q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final r:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:J

.field public y:Lteam/opay/pay/kyc/base/KycTaskNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public z:Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->C:Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$1;->INSTANCE:Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$special$$inlined$viewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$special$$inlined$viewModels$default$4;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$special$$inlined$viewModels$default$5;

    .line 40
    .line 41
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->l:Lid8;

    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 56
    .line 57
    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 59
    .line 60
    new-instance v0, Lp5;

    .line 61
    .line 62
    invoke-direct {v0}, Lp5;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->r:Lid8;

    .line 70
    .line 71
    new-instance v0, Lq5;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lq5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->s:Lid8;

    .line 81
    .line 82
    new-instance v0, Lr5;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lr5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->t:Lid8;

    .line 92
    .line 93
    const-string v0, ""

    .line 94
    .line 95
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->u:Ljava/lang/String;

    .line 96
    .line 97
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->v:Ljava/lang/String;

    .line 98
    .line 99
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->w:Ljava/lang/String;

    .line 100
    .line 101
    return-void
.end method

.method public static synthetic A0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->o1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final A1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Z)Lkotlin/Unit;
    .locals 13

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 4
    .line 5
    iget v2, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->W0()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-string v3, "idType"

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const-string v2, "action"

    .line 24
    .line 25
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v2, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v5, 0x2

    .line 42
    new-array v8, v5, [Lkotlin/Pair;

    .line 43
    .line 44
    aput-object v2, v8, p1

    .line 45
    .line 46
    aput-object v4, v8, v0

    .line 47
    .line 48
    const/16 v11, 0xc

    .line 49
    .line 50
    const/4 v12, 0x0

    .line 51
    const-string v7, "personal_information_fill_in"

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v10, 0x0

    .line 55
    move-object v6, p0

    .line 56
    invoke-static/range {v6 .. v12}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Llh6;

    .line 64
    .line 65
    iget-object v2, v2, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 66
    .line 67
    invoke-virtual {v2}, Lteam/opay/core/android/views/NumberInputView;->getInput()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-lez v2, :cond_1

    .line 76
    .line 77
    iget-boolean v2, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->p:Z

    .line 78
    .line 79
    if-nez v2, :cond_1

    .line 80
    .line 81
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v3, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-array v4, v0, [Lkotlin/Pair;

    .line 90
    .line 91
    aput-object v1, v4, p1

    .line 92
    .line 93
    const/16 v7, 0xc

    .line 94
    .line 95
    const/4 v8, 0x0

    .line 96
    const-string v3, "personal_information_fill_begin"

    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    const/4 v6, 0x0

    .line 100
    move-object v2, p0

    .line 101
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iput-boolean v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->p:Z

    .line 105
    .line 106
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Llh6;

    .line 111
    .line 112
    iget-object p1, p1, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 113
    .line 114
    invoke-virtual {p1}, Lteam/opay/core/android/views/NumberInputView;->getInput()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-lez p1, :cond_3

    .line 123
    .line 124
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Llh6;

    .line 129
    .line 130
    iget-object p1, p1, Llh6;->d:Landroidx/constraintlayout/widget/Group;

    .line 131
    .line 132
    const-string v0, "copiedGroup"

    .line 133
    .line 134
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Lkmf;->p(Landroid/view/View;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_2

    .line 142
    .line 143
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const-string v1, ""

    .line 148
    .line 149
    invoke-static {p1, v1, v1}, Lteam/opay/core/android/ContextKt;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Llh6;

    .line 157
    .line 158
    iget-object p1, p1, Llh6;->g:Lcom/google/android/material/button/MaterialButton;

    .line 159
    .line 160
    const-string v1, "idClickHere"

    .line 161
    .line 162
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Llh6;

    .line 173
    .line 174
    iget-object p1, p1, Llh6;->d:Landroidx/constraintlayout/widget/Group;

    .line 175
    .line 176
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j2()V

    .line 183
    .line 184
    .line 185
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->F1()V

    .line 186
    .line 187
    .line 188
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 189
    .line 190
    return-object p0
.end method

.method public static synthetic B0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->A1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final B1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)Lkotlin/Unit;
    .locals 11

    .line 1
    sget-object v0, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->a:Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->g()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->g1()Lteam/opay/pay/account/KeyBoardHelper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->g1()Lteam/opay/pay/account/KeyBoardHelper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 21
    .line 22
    iget v1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Llh6;

    .line 35
    .line 36
    iget-object v1, v1, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 37
    .line 38
    invoke-virtual {v1}, Lteam/opay/core/android/views/NumberInputView;->getInput()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p0, v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->E1(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v1, v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->Y1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 59
    .line 60
    iget v3, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 61
    .line 62
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 67
    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move-object v2, v1

    .line 76
    :goto_0
    const-string v3, "action"

    .line 77
    .line 78
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object v3, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->o:Lteam/opay/pay/kyc/base/IdNumberVerifyReq;

    .line 83
    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    invoke-virtual {v3}, Lteam/opay/pay/kyc/base/IdNumberVerifyReq;->getIdNumber()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :cond_1
    if-nez v1, :cond_2

    .line 91
    .line 92
    const-string v1, ""

    .line 93
    .line 94
    :cond_2
    const-string v3, "bvn_nin_Number"

    .line 95
    .line 96
    invoke-static {v3, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const/4 v3, 0x2

    .line 101
    new-array v6, v3, [Lkotlin/Pair;

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    aput-object v2, v6, v3

    .line 105
    .line 106
    aput-object v1, v6, v0

    .line 107
    .line 108
    const/16 v9, 0xc

    .line 109
    .line 110
    const/4 v10, 0x0

    .line 111
    const-string v5, "personal_information_identification_next_click"

    .line 112
    .line 113
    const/4 v7, 0x0

    .line 114
    const/4 v8, 0x0

    .line 115
    move-object v4, p0

    .line 116
    invoke-static/range {v4 .. v10}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p0
.end method

.method public static synthetic C0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->Q0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final C1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Landroid/widget/EditText;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

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
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 24
    .line 25
    .line 26
    new-instance v0, Li5;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Li5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic D0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->S0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final D1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Llh6;

    .line 6
    .line 7
    iget-object p0, p0, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/core/android/views/NumberInputView;->getInput()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-lez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public static synthetic E0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->u1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->O0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->Y0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final G1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->Y()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->w1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->U0(Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic J0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->X0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final K0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Llh6;

    .line 6
    .line 7
    iget-object p0, p0, Llh6;->q:Lteam/opay/core/android/views/PulseLoaderView;

    .line 8
    .line 9
    const-string v0, "loading"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final L0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ErrorMsg;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    const/16 v6, 0x1e

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    move-object v0, p0

    .line 18
    invoke-static/range {v0 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static final M0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 10

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    const-string v2, "action"

    .line 21
    .line 22
    invoke-static {v2, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x1

    .line 27
    new-array v5, v2, [Lkotlin/Pair;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object v0, v5, v2

    .line 31
    .line 32
    const/16 v8, 0xc

    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    const-string v4, "personal_information_silence"

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    move-object v3, p0

    .line 40
    invoke-static/range {v3 .. v9}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;->getDialogResponse()Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Lteam/opay/face/net/KycFaceRsp$KycDialogRsp;->getIfNeedOptionBVN()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :cond_1
    const-string v0, "Y"

    .line 54
    .line 55
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    sget-object v0, Lteam/opay/pay/kyc/task/guardian/KycGuardianOptionalBVNFragment;->p:Lteam/opay/pay/kyc/task/guardian/KycGuardianOptionalBVNFragment$Companion;

    .line 62
    .line 63
    invoke-virtual {v0}, Lteam/opay/pay/kyc/task/guardian/KycGuardianOptionalBVNFragment$Companion;->a()Lteam/opay/pay/kyc/task/guardian/KycGuardianOptionalBVNFragment;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lh5;

    .line 68
    .line 69
    invoke-direct {v1, p0, p1}, Lh5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/task/guardian/KycGuardianOptionalBVNFragment;->x0(Lkotlin/jvm/functions/Function0;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 80
    .line 81
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->i(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->l2(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    return-object p0
.end method

.method public static final M1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/upgrade2/dialog/KycSampleDialog;->u:Lteam/opay/pay/kyc/upgrade2/dialog/KycSampleDialog$Companion;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "requireContext(...)"

    .line 10
    .line 11
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const-string v5, "NIN"

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    move-object v4, v5

    .line 23
    :cond_0
    invoke-virtual {v1, v2, v4}, Lteam/opay/pay/kyc/a;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v5, p1

    .line 42
    :goto_0
    invoke-virtual {v1, v4, v5}, Lteam/opay/pay/kyc/a;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, v2, p1}, Lteam/opay/pay/kyc/upgrade2/dialog/KycSampleDialog$Companion;->a(Ljava/lang/String;Ljava/util/ArrayList;)Lteam/opay/pay/kyc/upgrade2/dialog/KycSampleDialog;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 51
    .line 52
    .line 53
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0
.end method

.method public static final N0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->l2(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final O0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object p1, Lteam/opay/pay/kyc/base/dialog/KycIdNumberConfirmDialog;->t:Lteam/opay/pay/kyc/base/dialog/KycIdNumberConfirmDialog$Companion;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->o:Lteam/opay/pay/kyc/base/IdNumberVerifyReq;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/IdNumberVerifyReq;->getIdType()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    const-string v2, ""

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    move-object v0, v2

    .line 19
    :cond_1
    iget-object v3, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->o:Lteam/opay/pay/kyc/base/IdNumberVerifyReq;

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {v3}, Lteam/opay/pay/kyc/base/IdNumberVerifyReq;->getIdNumber()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_2
    if-nez v1, :cond_3

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_3
    move-object v2, v1

    .line 31
    :goto_1
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->h1()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v0, v2, v1}, Lteam/opay/pay/kyc/base/dialog/KycIdNumberConfirmDialog$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/kyc/base/dialog/KycIdNumberConfirmDialog;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v0, Lb5;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lb5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/base/dialog/KycIdNumberConfirmDialog;->d0(Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 52
    .line 53
    .line 54
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method

.method public static final P0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "Y"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->X1(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final Q0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/List;

    .line 20
    .line 21
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;

    .line 26
    .line 27
    invoke-virtual {v1}, Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;->getType()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/String;

    .line 38
    .line 39
    new-instance v8, Lteam/opay/pay/kyc/customer/CertMethodRsp;

    .line 40
    .line 41
    const/16 v6, 0x1e

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    const-string v1, "USSD"

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    move-object v0, v8

    .line 51
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/kyc/customer/CertMethodRsp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1, v8}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->I1(Ljava/lang/String;Lteam/opay/pay/kyc/customer/CertMethodRsp;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->a1()Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v3, "getData(...)"

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget v3, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 72
    .line 73
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move-object v1, v3

    .line 88
    :goto_0
    sget v4, Lteam/opay/pay/R$string;->osdk_select_a_method_to_retrieve_id:I

    .line 89
    .line 90
    new-array v5, v2, [Ljava/lang/Object;

    .line 91
    .line 92
    aput-object v1, v5, v0

    .line 93
    .line 94
    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    const-string v5, "getString(...)"

    .line 99
    .line 100
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget-object v5, Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog;->t:Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog$Companion;

    .line 104
    .line 105
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    instance-of v7, v6, Ljava/util/ArrayList;

    .line 110
    .line 111
    if-eqz v7, :cond_2

    .line 112
    .line 113
    move-object v3, v6

    .line 114
    check-cast v3, Ljava/util/ArrayList;

    .line 115
    .line 116
    :cond_2
    invoke-virtual {v5, v4, v3}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog$Companion;->a(Ljava/lang/String;Ljava/util/ArrayList;)Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    new-instance v4, Lc5;

    .line 121
    .line 122
    invoke-direct {v4, p0, v1, p1}, Lc5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;Lkotlin/Pair;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v4}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog;->f0(Lkotlin/jvm/functions/Function1;)V

    .line 126
    .line 127
    .line 128
    new-instance p1, Ld5;

    .line 129
    .line 130
    invoke-direct {p1, p0, v1}, Ld5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, p1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2ForgotIdSelectDialog;->e0(Lkotlin/jvm/functions/Function0;)V

    .line 134
    .line 135
    .line 136
    const-string p1, "idType"

    .line 137
    .line 138
    invoke-static {p1, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-array v6, v2, [Lkotlin/Pair;

    .line 143
    .line 144
    aput-object p1, v6, v0

    .line 145
    .line 146
    const/16 v9, 0xc

    .line 147
    .line 148
    const/4 v10, 0x0

    .line 149
    const-string v5, "KYC1up2_forgot_bvn_superposed_show"

    .line 150
    .line 151
    const/4 v7, 0x0

    .line 152
    const/4 v8, 0x0

    .line 153
    move-object v4, p0

    .line 154
    invoke-static/range {v4 .. v10}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-static {p0, v3}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 158
    .line 159
    .line 160
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 161
    .line 162
    return-object p0
.end method

.method public static final R0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;Lkotlin/Pair;Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;)Lkotlin/Unit;
    .locals 9

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "idType"

    .line 7
    .line 8
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p3}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->Z0(Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "button"

    .line 17
    .line 18
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v4, v1, [Lkotlin/Pair;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    aput-object p1, v4, v1

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    aput-object v0, v4, p1

    .line 30
    .line 31
    const/16 v7, 0xc

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const-string v3, "KYC1up2_forgot_bvn_superposed_click"

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    move-object v2, p0

    .line 39
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p3}, Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;->getCertMethodRsp()Lteam/opay/pay/kyc/customer/CertMethodRsp;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-nez p2, :cond_0

    .line 53
    .line 54
    new-instance p2, Lteam/opay/pay/kyc/customer/CertMethodRsp;

    .line 55
    .line 56
    const/16 v6, 0x1e

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    const-string v1, "USSD"

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    move-object v0, p2

    .line 66
    invoke-direct/range {v0 .. v7}, Lteam/opay/pay/kyc/customer/CertMethodRsp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->I1(Ljava/lang/String;Lteam/opay/pay/kyc/customer/CertMethodRsp;)V

    .line 70
    .line 71
    .line 72
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p0
.end method

.method public static final R1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)Lkotlin/Unit;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "idtype"

    .line 6
    .line 7
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v4, v1, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    aput-object v0, v4, v1

    .line 16
    .line 17
    const/16 v7, 0xc

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const-string v3, "forgot_id_number_click"

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v2, p0

    .line 25
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->g1()Lteam/opay/pay/account/KeyBoardHelper;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 33
    .line 34
    .line 35
    const-string v0, "1"

    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->H1(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method public static final S0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    .line 1
    const-string v0, "idType"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "button"

    .line 8
    .line 9
    const-string v1, "close"

    .line 10
    .line 11
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x2

    .line 16
    new-array v4, v1, [Lkotlin/Pair;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    aput-object p1, v4, v1

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    aput-object v0, v4, p1

    .line 23
    .line 24
    const/16 v7, 0xc

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    const-string v3, "KYC1up2_forgot_bvn_superposed_click"

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v2, p0

    .line 32
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method public static final Y0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v3, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    const/16 v6, 0xc

    .line 5
    .line 6
    const/4 v7, 0x0

    .line 7
    const-string v2, "KYC1_personal_information_idcopy_click"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v1, p0

    .line 12
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->T1(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, ""

    .line 23
    .line 24
    invoke-static {p0, p1, p1}, Lteam/opay/core/android/ContextKt;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method

.method public static synthetic Y1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->X1(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: setPhotoComparison"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic a2(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_2

    .line 2
    .line 3
    and-int/lit8 p4, p3, 0x1

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->Z1(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 18
    .line 19
    const-string p1, "Super calls with default arguments not supported in this target, function: setRequest"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public static final d2()Lteam/opay/core/settings/NoClearStorage;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static final f2(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->V0(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;IILjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0, p4}, Lteam/opay/core/android/ContextKt;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final g2(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;ILjava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->V0(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;IILjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method private final h1()Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->t:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/KycNodeData;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic i0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->M1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final initView()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llh6;

    .line 6
    .line 7
    iget-object v0, v0, Llh6;->B:Lteam/opay/core/android/views/OpayActionBar;

    .line 8
    .line 9
    new-instance v1, Lt5;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lt5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->h1()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "REGISTER"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const-string v0, "kyc1_NINBVN"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v1, "KYC2"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string v0, "kyc_upto2_NINBVN"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v0, ""

    .line 48
    .line 49
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-lez v1, :cond_2

    .line 54
    .line 55
    sget-object v1, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig;->Companion:Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;->a(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Llh6;

    .line 68
    .line 69
    iget-object v2, v1, Llh6;->B:Lteam/opay/core/android/views/OpayActionBar;

    .line 70
    .line 71
    sget v1, Lteam/opay/pay/R$string;->osdk_help:I

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const-string v1, "getString(...)"

    .line 78
    .line 79
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v5, Lv4;

    .line 83
    .line 84
    invoke-direct {v5, p0, v0}, Lv4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 v6, 0x1

    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v3, 0x0

    .line 90
    invoke-static/range {v2 .. v7}, Lteam/opay/core/android/views/OpayActionBar;->k(Lteam/opay/core/android/views/OpayActionBar;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->s1()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->t1()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Llh6;

    .line 104
    .line 105
    iget-object v0, v0, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 106
    .line 107
    new-instance v1, Lw4;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lw4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/NumberInputView;->setOnInput(Lkotlin/jvm/functions/Function1;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Llh6;

    .line 120
    .line 121
    iget-object v0, v0, Llh6;->w:Landroidx/appcompat/widget/AppCompatButton;

    .line 122
    .line 123
    const-string v1, "nextStep"

    .line 124
    .line 125
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v1, Lx4;

    .line 129
    .line 130
    invoke-direct {v1, p0}, Lx4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Llh6;

    .line 141
    .line 142
    iget-object v0, v0, Llh6;->p:Lt1b;

    .line 143
    .line 144
    invoke-virtual {v0}, Lt1b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const-string v1, "getRoot(...)"

    .line 149
    .line 150
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Llh6;

    .line 162
    .line 163
    iget-object v0, v0, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Llh6;

    .line 173
    .line 174
    iget-object v0, v0, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 175
    .line 176
    invoke-virtual {v0}, Lteam/opay/core/android/views/NumberInputView;->l()Landroid/widget/EditText;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    new-instance v1, Ly4;

    .line 181
    .line 182
    invoke-direct {v1, p0, v0}, Ly4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Landroid/widget/EditText;)V

    .line 183
    .line 184
    .line 185
    const-wide/16 v2, 0xc8

    .line 186
    .line 187
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method public static synthetic j0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->C1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Landroid/widget/EditText;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->D1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final k1()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->r:Lid8;

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

.method private final k2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->g1()Lteam/opay/pay/account/KeyBoardHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->o()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->s()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static synthetic l0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->N0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->p1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->R1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;Lkotlin/Pair;Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->R0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;Lkotlin/Pair;Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final o1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lj5;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Lj5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static synthetic p0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;ILjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->g2(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;ILjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final p1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->K1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p4}, Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;->l(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string p3, "id_type"

    .line 25
    .line 26
    invoke-static {p3, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const/4 p3, 0x1

    .line 31
    new-array v2, p3, [Lkotlin/Pair;

    .line 32
    .line 33
    const/4 p3, 0x0

    .line 34
    aput-object p2, v2, p3

    .line 35
    .line 36
    const/16 v5, 0xc

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    const-string v1, "personal_information_identification_method_select"

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    move-object v0, p0

    .line 44
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iput p4, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->L1(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->S1()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j2()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public static synthetic q0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->f2(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->G1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)Lteam/opay/pay/kyc/base/KycNodeData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->P0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->z1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u0()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->d2()Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final u1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

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
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->w:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->T1(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->F1()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic v0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->M0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final v1()V
    .locals 11

    .line 1
    new-instance v10, Lteam/opay/pay/account/KeyBoardHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Llh6;

    .line 8
    .line 9
    iget-object v0, v0, Llh6;->p:Lt1b;

    .line 10
    .line 11
    iget-object v1, v0, Lt1b;->g:Landroid/inputmethodservice/KeyboardView;

    .line 12
    .line 13
    const-string v0, "keyBoardView"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Llh6;

    .line 23
    .line 24
    iget-object v0, v0, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 25
    .line 26
    invoke-virtual {v0}, Lteam/opay/core/android/views/NumberInputView;->l()Landroid/widget/EditText;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Llh6;

    .line 35
    .line 36
    iget-object v0, v0, Llh6;->p:Lt1b;

    .line 37
    .line 38
    iget-object v3, v0, Lt1b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Llh6;

    .line 45
    .line 46
    iget-object v0, v0, Llh6;->p:Lt1b;

    .line 47
    .line 48
    iget-object v4, v0, Lt1b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Llh6;

    .line 55
    .line 56
    iget-object v5, v0, Llh6;->x:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 57
    .line 58
    const/16 v8, 0x60

    .line 59
    .line 60
    const/4 v9, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    move-object v0, v10

    .line 64
    invoke-direct/range {v0 .. v9}, Lteam/opay/pay/account/KeyBoardHelper;-><init>(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLt1b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v10}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->U1(Lteam/opay/pay/account/KeyBoardHelper;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Llh6;

    .line 75
    .line 76
    iget-object v0, v0, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 77
    .line 78
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->g1()Lteam/opay/pay/account/KeyBoardHelper;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/NumberInputView;->i(Lteam/opay/pay/account/KeyBoardHelper;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Llh6;

    .line 90
    .line 91
    iget-object v0, v0, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 92
    .line 93
    new-instance v1, Lz4;

    .line 94
    .line 95
    invoke-direct {v1, p0}, Lz4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public static synthetic w0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->B1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final w1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->isForeground()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->g1()Lteam/opay/pay/account/KeyBoardHelper;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Llh6;

    .line 18
    .line 19
    iget-object p2, p2, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 20
    .line 21
    invoke-virtual {p2}, Lteam/opay/core/android/views/NumberInputView;->l()Landroid/widget/EditText;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Lteam/opay/pay/account/KeyBoardHelper;->p(Landroid/widget/EditText;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->k2()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public static synthetic x0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->y1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->L0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final y1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->onBackPressed()Z

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic z0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->K0(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final z1(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const-string v0, "NIN"

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Llh6;

    .line 26
    .line 27
    iget-object v1, v1, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 28
    .line 29
    invoke-virtual {v1}, Lteam/opay/core/android/views/NumberInputView;->getInput()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v2, "idType"

    .line 46
    .line 47
    invoke-static {v2, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v2, "idNumber"

    .line 52
    .line 53
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x2

    .line 58
    new-array v2, v2, [Lkotlin/Pair;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    aput-object v0, v2, v3

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    aput-object v1, v2, v0

    .line 65
    .line 66
    invoke-static {p0, p1, v2}, Lkmf;->y(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 67
    .line 68
    .line 69
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p0
.end method


# virtual methods
.method public E1(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "idNumber"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final F1()V
    .locals 3

    .line 1
    iget v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Llh6;

    .line 11
    .line 12
    iget-object v0, v0, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lteam/opay/core/android/views/NumberInputView;->getInput()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 36
    .line 37
    iget v2, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 38
    .line 39
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->W0()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Llh6;

    .line 56
    .line 57
    iget-object v1, v1, Llh6;->w:Landroidx/appcompat/widget/AppCompatButton;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public H1(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "idType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "channel"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final I1(Ljava/lang/String;Lteam/opay/pay/kyc/customer/CertMethodRsp;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/customer/CertMethodRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "channel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cerMethod"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/pay/kyc/customer/CertMethodRsp;->getMethod()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sparse-switch v1, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :sswitch_0
    const-string p2, "BANKACCOUNT"

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_0
    const/4 p2, 0x0

    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-static {p0, p2, v0, v0, p2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->a2(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Lteam/opay/pay/kyc/UpgradeByBankInfoActivity;->h:Lteam/opay/pay/kyc/UpgradeByBankInfoActivity$Companion;

    .line 42
    .line 43
    iget-object v4, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->o:Lteam/opay/pay/kyc/base/IdNumberVerifyReq;

    .line 44
    .line 45
    const/16 v8, 0x10

    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    move-object v2, p0

    .line 52
    move-object v5, p1

    .line 53
    invoke-static/range {v1 .. v9}, Lteam/opay/pay/kyc/UpgradeByBankInfoActivity$Companion;->b(Lteam/opay/pay/kyc/UpgradeByBankInfoActivity$Companion;Landroidx/fragment/app/Fragment;ZLteam/opay/pay/kyc/base/IdNumberVerifyReq;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :sswitch_1
    const-string v1, "REGISTER_MOBILE"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :sswitch_2
    const-string v1, "CERTIFICATE_MOBILE"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :sswitch_3
    const-string v1, "MOBILE"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    :cond_1
    new-instance p1, Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;

    .line 84
    .line 85
    invoke-virtual {p2}, Lteam/opay/pay/kyc/customer/CertMethodRsp;->getIdType()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v1, ""

    .line 90
    .line 91
    if-nez v0, :cond_2

    .line 92
    .line 93
    move-object v0, v1

    .line 94
    :cond_2
    invoke-virtual {p2}, Lteam/opay/pay/kyc/customer/CertMethodRsp;->getIdNumber()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-nez v2, :cond_3

    .line 99
    .line 100
    move-object v2, v1

    .line 101
    :cond_3
    invoke-virtual {p2}, Lteam/opay/pay/kyc/customer/CertMethodRsp;->getFirstName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-nez v3, :cond_4

    .line 106
    .line 107
    move-object v3, v1

    .line 108
    :cond_4
    invoke-virtual {p2}, Lteam/opay/pay/kyc/customer/CertMethodRsp;->getLastName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    if-nez p2, :cond_5

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    move-object v1, p2

    .line 116
    :goto_0
    invoke-direct {p1, v0, v2, v3, v1}, Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget-object p2, Lteam/opay/pay/kyc/upgrade1/task/RegisterRetrieveInformationFragment;->t:Lteam/opay/pay/kyc/upgrade1/task/RegisterRetrieveInformationFragment$Companion;

    .line 120
    .line 121
    invoke-virtual {p2, p1}, Lteam/opay/pay/kyc/upgrade1/task/RegisterRetrieveInformationFragment$Companion;->a(Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;)Lteam/opay/pay/kyc/upgrade1/task/RegisterRetrieveInformationFragment;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 130
    .line 131
    invoke-static {p2, v0, p1}, Lteam/opay/pay/base/FragmentKt;->i(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->V()Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p2, v0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->e2(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :goto_2
    return-void

    .line 148
    nop

    .line 149
    :sswitch_data_0
    .sparse-switch
        -0x78227b5e -> :sswitch_3
        -0x73a31796 -> :sswitch_2
        -0x2ad2ca42 -> :sswitch_1
        -0x15f323af -> :sswitch_0
    .end sparse-switch
.end method

.method public J1(Lteam/opay/pay/kyc/base/IdNumberVerifyReq;)V
    .locals 1
    .param p1    # Lteam/opay/pay/kyc/base/IdNumberVerifyReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final K1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->a1()Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getData(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Llh6;

    .line 35
    .line 36
    iget-object v1, v1, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 37
    .line 38
    invoke-virtual {v1}, Lteam/opay/core/android/views/NumberInputView;->getInput()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "BVN"

    .line 51
    .line 52
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->d0(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const-string v2, "NIN"

    .line 67
    .line 68
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->e0(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void
.end method

.method public final L1(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->f0(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Llh6;

    .line 13
    .line 14
    iget-object v0, v0, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/core/android/views/NumberInputView;->j()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->N1(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Llh6;

    .line 27
    .line 28
    iget-object v0, v0, Llh6;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Llh6;

    .line 42
    .line 43
    iget-object v0, v0, Llh6;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "requireContext(...)"

    .line 54
    .line 55
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-nez v3, :cond_0

    .line 63
    .line 64
    const-string v3, "NIN"

    .line 65
    .line 66
    :cond_0
    invoke-virtual {v1, v2, v3}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->N(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Llh6;

    .line 78
    .line 79
    iget-object v0, v0, Llh6;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    const-string v1, "sample"

    .line 82
    .line 83
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Ls5;

    .line 87
    .line 88
    invoke-direct {v1, p0, p1}, Ls5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->F1()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->q:Ljava/lang/String;

    .line 102
    .line 103
    return-void
.end method

.method public final N1(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "BVN"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->Q1(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "NIN"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->Q1(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Llh6;

    .line 34
    .line 35
    iget-object p1, p1, Llh6;->g:Lcom/google/android/material/button/MaterialButton;

    .line 36
    .line 37
    const-string v0, "idClickHere"

    .line 38
    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public abstract O1(Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V
    .param p1    # Lteam/opay/pay/kyc/base/IdNumberVerifyReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final P1(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->u:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final Q1(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lteam/opay/pay/kyc/upgrade2/task/Kyc2BvnConfig;->Companion:Lteam/opay/pay/kyc/upgrade2/task/Kyc2BvnConfig$Companion;

    .line 4
    .line 5
    invoke-virtual {v2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2BvnConfig$Companion;->a()Lteam/opay/pay/kyc/upgrade2/task/Kyc2BvnConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2BvnConfig;->getShowCallPhoneTip()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-static {v2, v3}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Llh6;

    .line 38
    .line 39
    iget-object v3, v3, Llh6;->d:Landroidx/constraintlayout/widget/Group;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v3, 0x0

    .line 50
    :goto_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Llh6;

    .line 55
    .line 56
    iget-object v4, v4, Llh6;->g:Lcom/google/android/material/button/MaterialButton;

    .line 57
    .line 58
    const-string v5, "idClickHere"

    .line 59
    .line 60
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    const/4 v3, 0x0

    .line 70
    :goto_2
    invoke-static {v4, v3}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 71
    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Llh6;

    .line 80
    .line 81
    iget-object v2, v2, Llh6;->g:Lcom/google/android/material/button/MaterialButton;

    .line 82
    .line 83
    sget v3, Lteam/opay/pay/R$string;->osdk_kyc_id_forgot:I

    .line 84
    .line 85
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    .line 91
    aput-object v4, v0, v1

    .line 92
    .line 93
    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Llh6;

    .line 105
    .line 106
    iget-object v0, v0, Llh6;->g:Lcom/google/android/material/button/MaterialButton;

    .line 107
    .line 108
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Le5;

    .line 112
    .line 113
    invoke-direct {v1, p0, p1}, Le5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    return-void
.end method

.method public final S1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->a1()Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getData(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    const-string v1, "BVN"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->O()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-lez v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->T1(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const-string v1, "NIN"

    .line 57
    .line 58
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->P()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-lez v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->T1(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_1
    return-void
.end method

.method public T0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final T1(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llh6;

    .line 6
    .line 7
    iget-object v0, v0, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/android/views/NumberInputView;->l()Landroid/widget/EditText;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lpf5;->b(Landroid/widget/EditText;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final U0(Ljr2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$backEnable$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$backEnable$2;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljr2;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method

.method public final U1(Lteam/opay/pay/account/KeyBoardHelper;)V
    .locals 1
    .param p1    # Lteam/opay/pay/account/KeyBoardHelper;
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
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->B:Lteam/opay/pay/account/KeyBoardHelper;

    .line 7
    .line 8
    return-void
.end method

.method public final V0(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;IILjava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x4

    .line 7
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    const-string v6, "NIN"

    .line 12
    .line 13
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    const-string v7, "channel"

    .line 18
    .line 19
    const-string v8, "kyc1to2_forgot_ID_scene"

    .line 20
    .line 21
    const/4 v9, 0x1

    .line 22
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    const-string v11, "type"

    .line 27
    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    invoke-static {v11, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const-string v10, "forgotNIN"

    .line 39
    .line 40
    invoke-static {v10, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    invoke-static {v8, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-static {v7, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-array v12, v4, [Lkotlin/Pair;

    .line 57
    .line 58
    aput-object v5, v12, v3

    .line 59
    .line 60
    aput-object v6, v12, v9

    .line 61
    .line 62
    aput-object v8, v12, v2

    .line 63
    .line 64
    aput-object v0, v12, v1

    .line 65
    .line 66
    const/16 v15, 0xc

    .line 67
    .line 68
    const/16 v16, 0x0

    .line 69
    .line 70
    const-string v11, "NIN_forgotnin_click"

    .line 71
    .line 72
    const/4 v13, 0x0

    .line 73
    const/4 v14, 0x0

    .line 74
    move-object/from16 v10, p0

    .line 75
    .line 76
    invoke-static/range {v10 .. v16}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const-string v6, "BVN"

    .line 81
    .line 82
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_1

    .line 87
    .line 88
    invoke-static {v11, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    const-string v10, "forgotBVN"

    .line 97
    .line 98
    invoke-static {v10, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-static {v8, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-static {v7, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-array v12, v4, [Lkotlin/Pair;

    .line 115
    .line 116
    aput-object v5, v12, v3

    .line 117
    .line 118
    aput-object v6, v12, v9

    .line 119
    .line 120
    aput-object v8, v12, v2

    .line 121
    .line 122
    aput-object v0, v12, v1

    .line 123
    .line 124
    const/16 v15, 0xc

    .line 125
    .line 126
    const/16 v16, 0x0

    .line 127
    .line 128
    const-string v11, "BVN_forgotbvn_click"

    .line 129
    .line 130
    const/4 v13, 0x0

    .line 131
    const/4 v14, 0x0

    .line 132
    move-object/from16 v10, p0

    .line 133
    .line 134
    invoke-static/range {v10 .. v16}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_1
    :goto_0
    return-void
.end method

.method public final V1(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final W0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Llh6;

    .line 16
    .line 17
    iget-object v1, v1, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/core/android/views/NumberInputView;->getInput()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getLimitCount()Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ne v0, v1, :cond_1

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    :cond_1
    :goto_0
    return v2
.end method

.method public final W1(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->z:Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 2
    .line 3
    return-void
.end method

.method public final X0()V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->k1()Lteam/opay/core/settings/NoClearStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lteam/opay/core/settings/NoClearStorage;->r()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x3

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static {v2, v4, v4, v3, v4}, Lteam/opay/core/android/ContextKt;->h(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    :cond_1
    sget-object v3, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Lteam/opay/pay/kyc/a;->t(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_3

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Lteam/opay/pay/kyc/a;->u(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v4, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    :goto_0
    const/4 v4, 0x1

    .line 46
    :goto_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Llh6;

    .line 51
    .line 52
    iget-object v5, v5, Llh6;->d:Landroidx/constraintlayout/widget/Group;

    .line 53
    .line 54
    const-string v6, "copiedGroup"

    .line 55
    .line 56
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v5, v4}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 60
    .line 61
    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    new-array v9, v1, [Lkotlin/Pair;

    .line 65
    .line 66
    const/16 v12, 0xc

    .line 67
    .line 68
    const/4 v13, 0x0

    .line 69
    const-string v8, "KYC1_personal_information_idcopy_show"

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    const/4 v11, 0x0

    .line 73
    move-object v7, p0

    .line 74
    invoke-static/range {v7 .. v13}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Llh6;

    .line 82
    .line 83
    iget-object v4, v4, Llh6;->g:Lcom/google/android/material/button/MaterialButton;

    .line 84
    .line 85
    const-string v5, "idClickHere"

    .line 86
    .line 87
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v4}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j2()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Llh6;

    .line 101
    .line 102
    iget-object v4, v4, Llh6;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    sget v6, Lteam/opay/pay/R$string;->osdk_you_have_copied:I

    .line 109
    .line 110
    invoke-virtual {v3, v2}, Lteam/opay/pay/kyc/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    new-array v0, v0, [Ljava/lang/Object;

    .line 115
    .line 116
    aput-object v3, v0, v1

    .line 117
    .line 118
    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Llh6;

    .line 134
    .line 135
    iget-object v0, v0, Llh6;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 136
    .line 137
    const-string v1, "copiedButton"

    .line 138
    .line 139
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance v1, La5;

    .line 143
    .line 144
    invoke-direct {v1, p0, v2}, La5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 148
    .line 149
    .line 150
    :cond_4
    return-void
.end method

.method public final X1(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, p1, v2, v0, v1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->a2(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->o:Lteam/opay/pay/kyc/base/IdNumberVerifyReq;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->J1(Lteam/opay/pay/kyc/base/IdNumberVerifyReq;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "getViewLifecycleOwner(...)"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "ID_INFO_VERIFY"

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1, v2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->Z(Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Lag8;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final Z0(Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/upgrade2/task/ForgotIdItem;->getType()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    const-string p1, ""

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p1, "phone"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string p1, "bank"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const-string p1, "ussd"

    .line 24
    .line 25
    :goto_0
    return-object p1
.end method

.method public final Z1(Ljava/lang/String;Z)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 4
    .line 5
    iget v2, v0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    move-object v5, v1

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    :goto_1
    const-string v1, "NIN"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Llh6;

    .line 32
    .line 33
    iget-object v1, v1, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 34
    .line 35
    invoke-virtual {v1}, Lteam/opay/core/android/views/NumberInputView;->getInput()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->h1()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v3, "REGISTER"

    .line 56
    .line 57
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_3

    .line 62
    .line 63
    const-string v3, "KYC2"

    .line 64
    .line 65
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_2
    const/4 v2, 0x0

    .line 73
    const/4 v15, 0x0

    .line 74
    goto :goto_4

    .line 75
    :cond_3
    :goto_3
    const/4 v2, 0x1

    .line 76
    const/4 v15, 0x1

    .line 77
    :goto_4
    new-instance v6, Lteam/opay/pay/kyc/base/IdNumberVerifyReq;

    .line 78
    .line 79
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->h1()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->h1()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2}, Lg4d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    if-eqz p2, :cond_4

    .line 100
    .line 101
    const-string v1, ""

    .line 102
    .line 103
    :cond_4
    iget-object v8, v0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->u:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->K()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->l1()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    iget-wide v11, v0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->x:J

    .line 118
    .line 119
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->q1()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v16

    .line 123
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->T0()Z

    .line 124
    .line 125
    .line 126
    move-result v17

    .line 127
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->i1()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v20

    .line 131
    const v22, 0x20610

    .line 132
    .line 133
    .line 134
    const/16 v23, 0x0

    .line 135
    .line 136
    const/4 v7, 0x0

    .line 137
    const/4 v13, 0x0

    .line 138
    const/4 v14, 0x0

    .line 139
    const-string v19, "FR1|certReleaseDialog"

    .line 140
    .line 141
    const/16 v21, 0x0

    .line 142
    .line 143
    move-object v2, v6

    .line 144
    move-object/from16 v24, v6

    .line 145
    .line 146
    move-object v6, v1

    .line 147
    move-object/from16 v18, p1

    .line 148
    .line 149
    invoke-direct/range {v2 .. v23}, Lteam/opay/pay/kyc/base/IdNumberVerifyReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 150
    .line 151
    .line 152
    move-object/from16 v1, v24

    .line 153
    .line 154
    iput-object v1, v0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->o:Lteam/opay/pay/kyc/base/IdNumberVerifyReq;

    .line 155
    .line 156
    return-void
.end method

.method public final a1()Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->s:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public addObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lu4;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lu4;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$a;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lf5;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lf5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$a;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lm5;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lm5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$a;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->W()Landroidx/lifecycle/MutableLiveData;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    new-instance v2, Ln5;

    .line 89
    .line 90
    invoke-direct {v2, p0}, Ln5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$a;

    .line 94
    .line 95
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    new-instance v2, Lo5;

    .line 114
    .line 115
    invoke-direct {v2, p0}, Lo5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V

    .line 116
    .line 117
    .line 118
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$a;

    .line 119
    .line 120
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final b1()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->a1()Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getData(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    :cond_0
    const-string v0, "NIN"

    .line 31
    .line 32
    :cond_1
    return-object v0
.end method

.method public final b2(Lteam/opay/pay/kyc/base/KycTaskNode;)V
    .locals 0
    .param p1    # Lteam/opay/pay/kyc/base/KycTaskNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->y:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    return-void
.end method

.method public final c1()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public final c2(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->x:J

    .line 2
    .line 3
    return-void
.end method

.method public final d1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e1()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->y:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycTaskNode;->getSupportIdTypes()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_3

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    add-int/lit8 v5, v3, 0x1

    .line 33
    .line 34
    if-gez v3, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 37
    .line 38
    .line 39
    :cond_0
    check-cast v4, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 40
    .line 41
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v4, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->y:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/KycTaskNode;->getSupportIdTypes()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/4 v4, 0x0

    .line 64
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 65
    .line 66
    if-ge v3, v4, :cond_2

    .line 67
    .line 68
    const-string v3, ","

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :cond_2
    move v3, v5

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, "toString(...)"

    .line 80
    .line 81
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object v0
.end method

.method public final e2(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;ILjava/lang/String;)V
    .locals 23

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p3

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    const/4 v1, 0x3

    .line 9
    const/4 v10, 0x0

    .line 10
    const/4 v11, 0x1

    .line 11
    if-nez v8, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "NIN"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string v12, "*565*0#"

    .line 25
    .line 26
    const-string v13, "*346#"

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    move-object v14, v13

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sget-object v2, Lteam/opay/pay/kyc/upgrade2/task/Kyc2BvnConfig;->Companion:Lteam/opay/pay/kyc/upgrade2/task/Kyc2BvnConfig$Companion;

    .line 33
    .line 34
    invoke-virtual {v2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2BvnConfig$Companion;->a()Lteam/opay/pay/kyc/upgrade2/task/Kyc2BvnConfig;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {v2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2BvnConfig;->getBvnCallPhone()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v14, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    :goto_0
    move-object v14, v12

    .line 50
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    sget v2, Lteam/opay/pay/R$string;->osdk_nin_call_content:I

    .line 61
    .line 62
    invoke-virtual {v7, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :goto_2
    move-object/from16 v17, v2

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    sget v2, Lteam/opay/pay/R$string;->osdk_bvn_call_content:I

    .line 70
    .line 71
    invoke-virtual {v7, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    goto :goto_2

    .line 76
    :goto_3
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const-string v3, "channel"

    .line 88
    .line 89
    const-string v4, "kyc1to2_forgot_ID_scene"

    .line 90
    .line 91
    const-string v5, "type"

    .line 92
    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v5, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-static {v3, v9}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    new-array v5, v1, [Lkotlin/Pair;

    .line 116
    .line 117
    aput-object v2, v5, v10

    .line 118
    .line 119
    aput-object v4, v5, v11

    .line 120
    .line 121
    aput-object v3, v5, v0

    .line 122
    .line 123
    const/16 v6, 0xc

    .line 124
    .line 125
    const/4 v12, 0x0

    .line 126
    const-string v1, "NIN_forgotnin_show"

    .line 127
    .line 128
    const/4 v3, 0x0

    .line 129
    const/4 v4, 0x0

    .line 130
    move-object/from16 v0, p0

    .line 131
    .line 132
    move-object v2, v5

    .line 133
    move v5, v6

    .line 134
    move-object v6, v12

    .line 135
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    sget v0, Lteam/opay/pay/R$string;->osdk_get_your_nin_via_ussd:I

    .line 139
    .line 140
    new-array v1, v11, [Ljava/lang/Object;

    .line 141
    .line 142
    aput-object v13, v1, v10

    .line 143
    .line 144
    invoke-virtual {v7, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :goto_4
    move-object/from16 v16, v0

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static {v5, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-static {v3, v9}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    new-array v5, v1, [Lkotlin/Pair;

    .line 172
    .line 173
    aput-object v2, v5, v10

    .line 174
    .line 175
    aput-object v4, v5, v11

    .line 176
    .line 177
    aput-object v3, v5, v0

    .line 178
    .line 179
    const/16 v6, 0xc

    .line 180
    .line 181
    const/4 v13, 0x0

    .line 182
    const-string v1, "BVN_forgotbvn_show"

    .line 183
    .line 184
    const/4 v3, 0x0

    .line 185
    const/4 v4, 0x0

    .line 186
    move-object/from16 v0, p0

    .line 187
    .line 188
    move-object v2, v5

    .line 189
    move v5, v6

    .line 190
    move-object v6, v13

    .line 191
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    sget v0, Lteam/opay/pay/R$string;->osdk_get_your_bvn_via_ussd:I

    .line 195
    .line 196
    new-array v1, v11, [Ljava/lang/Object;

    .line 197
    .line 198
    aput-object v12, v1, v10

    .line 199
    .line 200
    invoke-virtual {v7, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    goto :goto_4

    .line 205
    :goto_5
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    sget-object v15, Lteam/opay/pay/wallet/OneButtonSheetDialog;->o:Lteam/opay/pay/wallet/OneButtonSheetDialog$Companion;

    .line 209
    .line 210
    sget v0, Lteam/opay/pay/R$string;->osdk_tap_to_dail:I

    .line 211
    .line 212
    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const-string v1, "getString(...)"

    .line 217
    .line 218
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const/16 v21, 0x18

    .line 222
    .line 223
    const/16 v22, 0x0

    .line 224
    .line 225
    const/16 v19, 0x0

    .line 226
    .line 227
    const/16 v20, 0x0

    .line 228
    .line 229
    move-object/from16 v18, v0

    .line 230
    .line 231
    invoke-static/range {v15 .. v22}, Lteam/opay/pay/wallet/OneButtonSheetDialog$Companion;->b(Lteam/opay/pay/wallet/OneButtonSheetDialog$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/Object;)Lteam/opay/pay/wallet/OneButtonSheetDialog;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    new-instance v10, Lk5;

    .line 236
    .line 237
    move-object v0, v10

    .line 238
    move-object/from16 v1, p0

    .line 239
    .line 240
    move-object/from16 v2, p1

    .line 241
    .line 242
    move/from16 v3, p2

    .line 243
    .line 244
    move-object/from16 v4, p3

    .line 245
    .line 246
    move-object v5, v14

    .line 247
    invoke-direct/range {v0 .. v5}, Lk5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6, v10}, Lteam/opay/pay/wallet/OneButtonSheetDialog;->e0(Lkotlin/jvm/functions/Function0;)V

    .line 251
    .line 252
    .line 253
    new-instance v0, Ll5;

    .line 254
    .line 255
    move/from16 v1, p2

    .line 256
    .line 257
    invoke-direct {v0, v7, v8, v1, v9}, Ll5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;ILjava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6, v0}, Lteam/opay/pay/wallet/OneButtonSheetDialog;->d0(Lkotlin/jvm/functions/Function0;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v7, v6}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 264
    .line 265
    .line 266
    return-void
.end method

.method public f1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final g1()Lteam/opay/pay/account/KeyBoardHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->B:Lteam/opay/pay/account/KeyBoardHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "keyBoardHelper"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final h2(Ljava/lang/String;)V
    .locals 12

    .line 1
    new-instance v11, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 2
    .line 3
    sget v0, Lteam/opay/pay/R$string;->osdk_kyc_incorrect_id:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->b1()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v1, v3, v4

    .line 14
    .line 15
    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v0, "getString(...)"

    .line 20
    .line 21
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget v5, Lteam/opay/pay/R$string;->osdk_kyc_id_error_dialog_content:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->b1()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const/4 v7, 0x0

    .line 35
    invoke-static {p1, v4, v2, v7}, Li6e;->c(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v7, 0x2

    .line 40
    new-array v7, v7, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object v6, v7, v4

    .line 43
    .line 44
    aput-object p1, v7, v2

    .line 45
    .line 46
    invoke-virtual {v1, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget v1, Lteam/opay/pay/R$string;->osdk_got_it:I

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/16 v9, 0xf1

    .line 63
    .line 64
    const/4 v10, 0x0

    .line 65
    const/4 v1, 0x0

    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    move-object v0, v11

    .line 71
    move-object v2, v3

    .line 72
    move-object v3, p1

    .line 73
    invoke-direct/range {v0 .. v10}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 77
    .line 78
    invoke-virtual {p1, v11}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public i1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final i2()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llh6;

    .line 6
    .line 7
    iget-object v0, v0, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 8
    .line 9
    sget v1, Lteam/opay/pay/R$drawable;->osdk_shape_white_r8_stroke_red:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Llh6;

    .line 19
    .line 20
    iget-object v0, v0, Llh6;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget v2, Lteam/opay/pay/R$string;->osdk_kyc_id_error_tips:I

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->b1()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x1

    .line 39
    new-array v4, v4, [Ljava/lang/Object;

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    aput-object v3, v4, v5

    .line 43
    .line 44
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final j2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llh6;

    .line 6
    .line 7
    iget-object v0, v0, Llh6;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    const-string v1, "idNumberErrorTips"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Llh6;

    .line 22
    .line 23
    iget-object v0, v0, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 24
    .line 25
    sget v1, Lteam/opay/pay/R$drawable;->osdk_shape_white_r8_stroke_00b876:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final l1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->y:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getTaskId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    :cond_1
    return-object v0
.end method

.method public final l2(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->o:Lteam/opay/pay/kyc/base/IdNumberVerifyReq;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->O1(Lteam/opay/pay/kyc/base/IdNumberVerifyReq;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final m1()Lteam/opay/pay/kyc/base/KycTaskNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->y:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public m2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "idType"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-ne p2, v0, :cond_3

    .line 6
    .line 7
    const/16 p2, 0x3e7

    .line 8
    .line 9
    if-ne p1, p2, :cond_3

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    const-string p2, "key_upgrade_by_bank_bank_code"

    .line 15
    .line 16
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p2, p1

    .line 22
    :goto_0
    if-eqz p3, :cond_1

    .line 23
    .line 24
    const-string v0, "key_upgrade_by_bank_bank_account"

    .line 25
    .line 26
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v0, p1

    .line 32
    :goto_1
    const-string v1, "BVN"

    .line 33
    .line 34
    invoke-virtual {p0, v1, p2, v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-eqz p3, :cond_3

    .line 38
    .line 39
    const-string p2, "key_upgrade_by_bank_data"

    .line 40
    .line 41
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    instance-of p3, p2, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;

    .line 48
    .line 49
    if-eqz p3, :cond_2

    .line 50
    .line 51
    move-object p1, p2

    .line 52
    :cond_2
    if-eqz p1, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p1, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method public onBackPressed()Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v3, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    const/16 v6, 0xc

    .line 5
    .line 6
    const/4 v7, 0x0

    .line 7
    const-string v2, "personal_information_back_click"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v1, p0

    .line 12
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->onBackPressed()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-static {v0, v1, v1, v2, v1}, Lteam/opay/core/android/ContextKt;->h(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    :cond_0
    sget-object v1, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lteam/opay/pay/kyc/a;->q(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v2, 0xb

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->T1(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ge v1, v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->T1(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->i2()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j2()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->h2(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->i2()V

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1    # Landroid/view/ContextMenu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ContextMenu$ContextMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "menu"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "v"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Llh6;

    .line 23
    .line 24
    iget-object v0, v0, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 25
    .line 26
    invoke-virtual {v0}, Lteam/opay/core/android/views/NumberInputView;->l()Landroid/widget/EditText;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ne p3, v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    sget v0, Lteam/opay/pay/R$string;->osdk_paste:I

    .line 45
    .line 46
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-interface {p1, v0, p2, v0, p3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Llh6;

    .line 11
    .line 12
    iget-object p1, p1, Llh6;->B:Lteam/opay/core/android/views/OpayActionBar;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/core/android/views/OpayActionBar;->getBackView()Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$onHiddenChanged$1;

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-direct {v3, p0, p1}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$onHiddenChanged$1;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljr2;)V

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$onResume$1;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v3, p0, v2}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment$onResume$1;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;Ljr2;)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->v1()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->r1()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->x1()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->initView()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->addObserver()V

    .line 22
    .line 23
    .line 24
    const-string p1, "idType"

    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->e1()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 p2, 0x1

    .line 35
    new-array v2, p2, [Lkotlin/Pair;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    aput-object p1, v2, p2

    .line 39
    .line 40
    const/16 v5, 0xc

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const-string v1, "personal_information_show"

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    move-object v0, p0

    .line 48
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public q1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "N"

    .line 2
    .line 3
    return-object v0
.end method

.method public r1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->y:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdType()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    const-string v2, ""

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->z:Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    const-string v0, "NIN"

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->y:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdType()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    move-object v0, v1

    .line 39
    :goto_1
    if-nez v0, :cond_4

    .line 40
    .line 41
    move-object v0, v2

    .line 42
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_6

    .line 47
    .line 48
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->z:Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_2

    .line 57
    :cond_5
    move-object v0, v1

    .line 58
    :goto_2
    if-nez v0, :cond_6

    .line 59
    .line 60
    move-object v0, v2

    .line 61
    :cond_6
    :goto_3
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->v:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->y:Lteam/opay/pay/kyc/base/KycTaskNode;

    .line 64
    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycTaskNode;->getIdNumber()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_7
    if-nez v1, :cond_8

    .line 72
    .line 73
    move-object v1, v2

    .line 74
    :cond_8
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_a

    .line 79
    .line 80
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->A:Ljava/lang/String;

    .line 81
    .line 82
    if-nez v0, :cond_9

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_9
    move-object v2, v0

    .line 86
    :goto_4
    move-object v1, v2

    .line 87
    :cond_a
    iput-object v1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->w:Ljava/lang/String;

    .line 88
    .line 89
    return-void
.end method

.method public final s1()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llh6;

    .line 6
    .line 7
    iget-object v0, v0, Llh6;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->a1()Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 30
    .line 31
    const/4 v2, 0x6

    .line 32
    invoke-static {v2}, Ljmf;->d(I)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-static {v2}, Ljmf;->d(I)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/16 v12, 0x78

    .line 41
    .line 42
    const/4 v13, 0x0

    .line 43
    const/4 v7, 0x2

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v11, 0x0

    .line 48
    move-object v4, v1

    .line 49
    invoke-direct/range {v4 .. v13}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final t1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->j1()Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberViewModel;->V()Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    iget-object v2, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->z:Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Llh6;

    .line 37
    .line 38
    iget-object v0, v0, Llh6;->j:Lteam/opay/core/android/views/NumberInputView;

    .line 39
    .line 40
    invoke-virtual {v0}, Lteam/opay/core/android/views/NumberInputView;->l()Landroid/widget/EditText;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lg5;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lg5;-><init>(Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v2, 0xc8

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final x1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->f1()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    iput v1, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 26
    .line 27
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->L1(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    move-object v4, v3

    .line 56
    check-cast v4, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 57
    .line 58
    invoke-virtual {v4}, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;->getCode()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget-object v5, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->v:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v3, 0x0

    .line 72
    :goto_0
    check-cast v3, Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;

    .line 73
    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->a1()Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v4, v0}, Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;->l(I)V

    .line 87
    .line 88
    .line 89
    iput v0, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->n:I

    .line 90
    .line 91
    invoke-virtual {p0, v3}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->L1(Lteam/opay/pay/kyc/base/KycIdTypeDataRsp;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->a1()Lteam/opay/pay/onboarding/register/KycIdTypeAdapter;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v3, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Llh6;

    .line 108
    .line 109
    iget-object v0, v0, Llh6;->m:Landroidx/constraintlayout/widget/Group;

    .line 110
    .line 111
    const-string v3, "idTypeGroup"

    .line 112
    .line 113
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Lteam/opay/pay/kyc/base/AbstractSetIdNumberFragment;->m:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-le v3, v2, :cond_4

    .line 123
    .line 124
    const/4 v1, 0x1

    .line 125
    :cond_4
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 126
    .line 127
    .line 128
    return-void
.end method
