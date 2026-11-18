.class public abstract Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;
.super Lteam/opay/core/base/BaseInjectFragmentV2;
.source "BaseTransferSendMoneyFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Lxyf;",
        ">",
        "Lteam/opay/core/base/BaseInjectFragmentV2<",
        "TVB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00dc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000 \u00b8\u0001*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003:\u0002\u00b9\u0001B)\u0012 \u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\rJ#\u0010\u0013\u001a\u00020\u000b2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J\u000f\u0010\u001a\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\rJ\u000f\u0010\u001b\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\rJ!\u0010 \u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\"\u0010\rJ\u0011\u0010#\u001a\u0004\u0018\u00010\u001cH&\u00a2\u0006\u0004\u0008#\u0010$J\u0011\u0010&\u001a\u0004\u0018\u00010%H&\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010(\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008*\u0010)J\u000f\u0010+\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008+\u0010)J\u000f\u0010-\u001a\u00020,H&\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008/\u0010)J\u0011\u00101\u001a\u0004\u0018\u000100H\u0016\u00a2\u0006\u0004\u00081\u00102J\u0019\u00105\u001a\u00020\u000b2\u0008\u00104\u001a\u0004\u0018\u000103H\u0016\u00a2\u0006\u0004\u00085\u00106J\u000f\u00107\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00087\u0010\rJ\u0019\u0010:\u001a\u00020\u000b2\u0008\u00109\u001a\u0004\u0018\u000108H\u0016\u00a2\u0006\u0004\u0008:\u0010;J%\u0010=\u001a\u00020\u000b2\u0014\u0010\u0012\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010<\u0012\u0004\u0012\u00020\u000b0\u0010H&\u00a2\u0006\u0004\u0008=\u0010\u0014J\u000f\u0010>\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008>\u0010\rJ#\u0010?\u001a\u00020\u000b2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000b0\u0010H&\u00a2\u0006\u0004\u0008?\u0010\u0014J\u0017\u0010B\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020@H\u0016\u00a2\u0006\u0004\u0008B\u0010CJ\u0017\u0010D\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008D\u0010\u0017J\u0017\u0010F\u001a\u00020\u000b2\u0006\u0010E\u001a\u00020@H&\u00a2\u0006\u0004\u0008F\u0010CJ\u000f\u0010G\u001a\u00020@H&\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010I\u001a\u00020@H&\u00a2\u0006\u0004\u0008I\u0010HJ\u000f\u0010J\u001a\u00020@H&\u00a2\u0006\u0004\u0008J\u0010HJ\u0011\u0010K\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0004\u0008K\u0010LJ\u0011\u0010M\u001a\u0004\u0018\u00010@H\u0016\u00a2\u0006\u0004\u0008M\u0010HJ\u000f\u0010N\u001a\u00020@H&\u00a2\u0006\u0004\u0008N\u0010HJ\u000f\u0010O\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008O\u0010)J\u000f\u0010Q\u001a\u00020PH\u0016\u00a2\u0006\u0004\u0008Q\u0010RJ)\u0010X\u001a\u00020\u000b2\u0006\u0010T\u001a\u00020S2\u0006\u0010U\u001a\u00020S2\u0008\u0010W\u001a\u0004\u0018\u00010VH\u0016\u00a2\u0006\u0004\u0008X\u0010YJ\u0011\u0010Z\u001a\u0004\u0018\u00010@H\u0016\u00a2\u0006\u0004\u0008Z\u0010HJ\u000f\u0010[\u001a\u00020@H\u0016\u00a2\u0006\u0004\u0008[\u0010HJ\u000f\u0010\\\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\\\u0010)R.\u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u001b\u0010d\u001a\u00020_8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010cR\u001b\u0010i\u001a\u00020e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008f\u0010a\u001a\u0004\u0008g\u0010hR\"\u0010q\u001a\u00020j8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008k\u0010l\u001a\u0004\u0008m\u0010n\"\u0004\u0008o\u0010pR\"\u0010y\u001a\u00020r8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008s\u0010t\u001a\u0004\u0008u\u0010v\"\u0004\u0008w\u0010xR\u001d\u0010|\u001a\u0004\u0018\u00010%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008z\u0010a\u001a\u0004\u0008{\u0010\'R\u001d\u0010\u007f\u001a\u0004\u0018\u00010\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008}\u0010a\u001a\u0004\u0008~\u0010$R \u0010\u0084\u0001\u001a\u00030\u0080\u00018VX\u0096\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0081\u0001\u0010a\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001R \u0010\u0089\u0001\u001a\u00030\u0085\u00018VX\u0096\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0086\u0001\u0010a\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\'\u0010\u008e\u0001\u001a\u00020@8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0016\n\u0006\u0008\u008a\u0001\u0010\u008b\u0001\u001a\u0005\u0008\u008c\u0001\u0010H\"\u0005\u0008\u008d\u0001\u0010CR\'\u0010\u0092\u0001\u001a\u00020@8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0016\n\u0006\u0008\u008f\u0001\u0010\u008b\u0001\u001a\u0005\u0008\u0090\u0001\u0010H\"\u0005\u0008\u0091\u0001\u0010CR\u0019\u0010\u0095\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001R)\u0010\u0099\u0001\u001a\u0004\u0018\u00010@8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0016\n\u0006\u0008\u0096\u0001\u0010\u008b\u0001\u001a\u0005\u0008\u0097\u0001\u0010H\"\u0005\u0008\u0098\u0001\u0010CR*\u0010\u00a1\u0001\u001a\u00030\u009a\u00018\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u009b\u0001\u0010\u009c\u0001\u001a\u0006\u0008\u009d\u0001\u0010\u009e\u0001\"\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R*\u0010\u00a9\u0001\u001a\u00030\u00a2\u00018\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001\u001a\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001\"\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001R\u001b\u0010\u00ac\u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001R+\u0010\u00b3\u0001\u001a\u0004\u0018\u00010<8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001\u001a\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\"\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R\u0018\u0010\u00b7\u0001\u001a\u00030\u00b4\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001\u00a8\u0006\u00ba\u0001"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;",
        "Lxyf;",
        "VB",
        "Lteam/opay/core/base/BaseInjectFragmentV2;",
        "Lkotlin/Function3;",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "",
        "inflate",
        "<init>",
        "(Lhm6;)V",
        "",
        "initView",
        "()V",
        "g1",
        "r1",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/cashier/TransferPreOrder;",
        "callback",
        "t0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "isSending",
        "showProgress",
        "(Z)V",
        "value",
        "i1",
        "d1",
        "e0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "N0",
        "y0",
        "()Landroid/view/View;",
        "Lteam/opay/pay/android/views/NoticeAmountInputView;",
        "n0",
        "()Lteam/opay/pay/android/views/NoticeAmountInputView;",
        "V0",
        "()Z",
        "q1",
        "h0",
        "Lteam/opay/pay/transfer/contact/view/RemarkView;",
        "x0",
        "()Lteam/opay/pay/transfer/contact/view/RemarkView;",
        "W0",
        "Lteam/opay/core/api/graphql/StampDutyInfo;",
        "D0",
        "()Lteam/opay/core/api/graphql/StampDutyInfo;",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "amount",
        "n1",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V",
        "g0",
        "Lteam/opay/pay/home/pay/Service;",
        "service",
        "c1",
        "(Lteam/opay/pay/home/pay/Service;)V",
        "Lteam/opay/core/api/graphql/AASendMoneyPageInfo;",
        "r0",
        "a1",
        "f1",
        "",
        "text",
        "X0",
        "(Ljava/lang/String;)V",
        "Y0",
        "remark",
        "Z0",
        "k0",
        "()Ljava/lang/String;",
        "L0",
        "M0",
        "E0",
        "()Ljava/lang/Boolean;",
        "F0",
        "I0",
        "U0",
        "Lteam/opay/pay/cashier/TransferCheckRequest;",
        "G0",
        "()Lteam/opay/pay/cashier/TransferCheckRequest;",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "l0",
        "J0",
        "C0",
        "k",
        "Lhm6;",
        "Lteam/opay/pay/transfer/contact/TransferContactViewModel;",
        "l",
        "Lid8;",
        "H0",
        "()Lteam/opay/pay/transfer/contact/TransferContactViewModel;",
        "transferContactViewModel",
        "Lteam/opay/pay/opay/PaymentViewModel;",
        "m",
        "s0",
        "()Lteam/opay/pay/opay/PaymentViewModel;",
        "paymentViewModel",
        "Lteam/opay/pay/phone/ContactsHandler;",
        "n",
        "Lteam/opay/pay/phone/ContactsHandler;",
        "getContactsHandler",
        "()Lteam/opay/pay/phone/ContactsHandler;",
        "setContactsHandler",
        "(Lteam/opay/pay/phone/ContactsHandler;)V",
        "contactsHandler",
        "Lp60;",
        "o",
        "Lp60;",
        "j0",
        "()Lp60;",
        "setFirebaseAssistantUserActions",
        "(Lp60;)V",
        "firebaseAssistantUserActions",
        "p",
        "o0",
        "input_amount",
        "q",
        "z0",
        "send_money",
        "Lteam/opay/pay/home/tabs/MobileTransferViewModel;",
        "r",
        "K0",
        "()Lteam/opay/pay/home/tabs/MobileTransferViewModel;",
        "viewModel",
        "Lteam/opay/pay/home/tabs/MoneyTransferViewModel;",
        "s",
        "p0",
        "()Lteam/opay/pay/home/tabs/MoneyTransferViewModel;",
        "moneyTransferViewModel",
        "t",
        "Ljava/lang/String;",
        "v0",
        "l1",
        "recipientName",
        "u",
        "w0",
        "m1",
        "recipientPhone",
        "v",
        "Z",
        "triggerTransferMoneyAction",
        "w",
        "m0",
        "j1",
        "fromService",
        "Lteam/opay/core/api/GraphQL$ServiceType;",
        "x",
        "Lteam/opay/core/api/GraphQL$ServiceType;",
        "B0",
        "()Lteam/opay/core/api/GraphQL$ServiceType;",
        "p1",
        "(Lteam/opay/core/api/GraphQL$ServiceType;)V",
        "serviceType",
        "Lteam/opay/core/api/GraphQL$ServiceId;",
        "y",
        "Lteam/opay/core/api/GraphQL$ServiceId;",
        "A0",
        "()Lteam/opay/core/api/GraphQL$ServiceId;",
        "o1",
        "(Lteam/opay/core/api/GraphQL$ServiceId;)V",
        "serviceId",
        "z",
        "Ljava/lang/Boolean;",
        "isNewUser",
        "A",
        "Lteam/opay/core/api/graphql/AASendMoneyPageInfo;",
        "q0",
        "()Lteam/opay/core/api/graphql/AASendMoneyPageInfo;",
        "k1",
        "(Lteam/opay/core/api/graphql/AASendMoneyPageInfo;)V",
        "pageInfo",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "i0",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "B",
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
.field public static final B:Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final C:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A:Lteam/opay/core/api/graphql/AASendMoneyPageInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Lhm6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhm6<",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Boolean;",
            "TVB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lteam/opay/pay/phone/ContactsHandler;

.field public o:Lp60;

.field public final p:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field public t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Z

.field public w:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:Lteam/opay/core/api/GraphQL$ServiceId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public z:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->B:Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$Companion;

    .line 8
    .line 9
    const-string v0, "key_is_new_user"

    .line 10
    .line 11
    sput-object v0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->C:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lhm6;)V
    .locals 5
    .param p1    # Lhm6;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhm6<",
            "-",
            "Landroid/view/LayoutInflater;",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Boolean;",
            "+TVB;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "inflate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/core/base/BaseInjectFragmentV2;-><init>(Lhm6;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->k:Lhm6;

    .line 10
    .line 11
    const-class p1, Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$2;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, v2, p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v3, p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1, v0, v1, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->l:Lid8;

    .line 38
    .line 39
    new-instance p1, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$viewModels$default$1;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 45
    .line 46
    new-instance v1, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$viewModels$default$2;

    .line 47
    .line 48
    invoke-direct {v1, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-class v0, Lteam/opay/pay/opay/PaymentViewModel;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$viewModels$default$3;

    .line 62
    .line 63
    invoke-direct {v1, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$viewModels$default$4;

    .line 67
    .line 68
    invoke-direct {v3, v2, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 69
    .line 70
    .line 71
    new-instance v4, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$viewModels$default$5;

    .line 72
    .line 73
    invoke-direct {v4, p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v0, v1, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->m:Lid8;

    .line 81
    .line 82
    new-instance p1, Lwx0;

    .line 83
    .line 84
    invoke-direct {p1, p0}, Lwx0;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->p:Lid8;

    .line 92
    .line 93
    new-instance p1, Lxx0;

    .line 94
    .line 95
    invoke-direct {p1, p0}, Lxx0;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->q:Lid8;

    .line 103
    .line 104
    const-class p1, Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 105
    .line 106
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance v0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$4;

    .line 111
    .line 112
    invoke-direct {v0, p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 113
    .line 114
    .line 115
    new-instance v1, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$5;

    .line 116
    .line 117
    invoke-direct {v1, v2, p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$5;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 118
    .line 119
    .line 120
    new-instance v3, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$6;

    .line 121
    .line 122
    invoke-direct {v3, p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$6;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p0, p1, v0, v1, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->r:Lid8;

    .line 130
    .line 131
    const-class p1, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;

    .line 132
    .line 133
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    new-instance v0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$7;

    .line 138
    .line 139
    invoke-direct {v0, p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$7;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 140
    .line 141
    .line 142
    new-instance v1, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$8;

    .line 143
    .line 144
    invoke-direct {v1, v2, p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$8;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 145
    .line 146
    .line 147
    new-instance v2, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$9;

    .line 148
    .line 149
    invoke-direct {v2, p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$special$$inlined$activityViewModels$default$9;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 150
    .line 151
    .line 152
    invoke-static {p0, p1, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->s:Lid8;

    .line 157
    .line 158
    const-string p1, ""

    .line 159
    .line 160
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->t:Ljava/lang/String;

    .line 161
    .line 162
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->u:Ljava/lang/String;

    .line 163
    .line 164
    sget-object p1, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_SEND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 165
    .line 166
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->x:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 167
    .line 168
    sget-object p1, Lteam/opay/core/api/GraphQL$ServiceId;->COINS_SEND:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 169
    .line 170
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->y:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 171
    .line 172
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->v1(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final O0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->showProgress(Z)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->u0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final P0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->Z0(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->f0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Q0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->y0()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->v:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->j0()Lp60;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "getIntent(...)"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Lp60;->b(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->y0()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 45
    .line 46
    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->v:Z

    .line 49
    .line 50
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->h1(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final R0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->d1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic S(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->u1(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final S0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->a1()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->P0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final T0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)Lteam/opay/pay/android/views/NoticeAmountInputView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->n0()Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->R0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic V(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)Lteam/opay/pay/android/views/NoticeAmountInputView;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->T0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->O0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic X(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/core/api/graphql/AASendMoneyPageInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->e1(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/core/api/graphql/AASendMoneyPageInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->b1(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Z(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->s1(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic a0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->Q0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->S0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b1(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->g1()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->o0()Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getInputText()Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-static {p1}, Lli2;->h(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->o0()Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getInputText()Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static synthetic c0(Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->t1(Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->C:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final e1(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/core/api/graphql/AASendMoneyPageInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->k1(Lteam/opay/core/api/graphql/AASendMoneyPageInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->e0()V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final f0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->o0()Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getInputText()Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lteam/opay/pay/android/views/NoticeAmountInputText;->getFormatText()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0, v0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->X0(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->Y0(Z)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method private final g1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->K0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->N()Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->w0()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->o0()Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getInputText()Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Lteam/opay/pay/android/views/NoticeAmountInputText;->getFormatText()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    if-nez v1, :cond_1

    .line 35
    .line 36
    const-string v1, ""

    .line 37
    .line 38
    :cond_1
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->d(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->x0()Lteam/opay/pay/transfer/contact/view/RemarkView;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/view/RemarkView;->getRemarkContent()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->r1()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static final h1(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->y0()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final i0()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->K0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private final i1(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->o0()Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final initView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->n0()Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->s0()Lteam/opay/pay/opay/PaymentViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getInputText()Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "getViewLifecycleOwner(...)"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lteam/opay/pay/opay/PaymentViewModel;->I(Landroid/widget/EditText;Lag8;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->K0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceId;->COINS_SEND:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->T(Lteam/opay/core/api/GraphQL$ServiceId;)Landroidx/lifecycle/LiveData;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lyx0;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lyx0;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p0, v1}, Lnna;->c(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->K0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v2, Lzx0;

    .line 58
    .line 59
    invoke-direct {v2, p0}, Lzx0;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->z0()Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    new-instance v1, Lay0;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Lay0;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Lfe1;->c(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->o0()Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/4 v1, 0x1

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-virtual {v0}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getInputText()Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    const/4 v2, 0x3

    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 94
    .line 95
    .line 96
    sget v2, Lteam/opay/pay/R$string;->numbers_only_pattern_whit_dot:I

    .line 97
    .line 98
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 107
    .line 108
    .line 109
    const/4 v2, 0x5

    .line 110
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 114
    .line 115
    .line 116
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const/4 v2, 0x0

    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    const-string v3, "amount"

    .line 124
    .line 125
    const-string v4, ""

    .line 126
    .line 127
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    goto :goto_0

    .line 132
    :cond_3
    move-object v0, v2

    .line 133
    :goto_0
    const/4 v3, 0x0

    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-nez v4, :cond_4

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    const/4 v4, 0x0

    .line 144
    goto :goto_2

    .line 145
    :cond_5
    :goto_1
    const/4 v4, 0x1

    .line 146
    :goto_2
    if-nez v4, :cond_6

    .line 147
    .line 148
    move-object v2, v0

    .line 149
    :cond_6
    if-eqz v2, :cond_8

    .line 150
    .line 151
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->o0()Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    invoke-virtual {v0}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getInputText()Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    :cond_7
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->o0()Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-eqz v0, :cond_8

    .line 171
    .line 172
    invoke-virtual {v0, v3}, Lteam/opay/pay/android/views/NoticeAmountInputView;->setEnable(Z)V

    .line 173
    .line 174
    .line 175
    :cond_8
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 176
    .line 177
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->z()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_9

    .line 186
    .line 187
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->x0()Lteam/opay/pay/transfer/contact/view/RemarkView;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->W0()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    invoke-virtual {v0, v1}, Lteam/opay/pay/transfer/contact/view/RemarkView;->n(Z)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_9
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->x0()Lteam/opay/pay/transfer/contact/view/RemarkView;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    new-instance v2, Lby0;

    .line 204
    .line 205
    invoke-direct {v2, p0}, Lby0;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/transfer/contact/view/RemarkView;->r(ZLkotlin/jvm/functions/Function1;)V

    .line 209
    .line 210
    .line 211
    :goto_3
    return-void
.end method

.method private final r1()V
    .locals 1

    .line 1
    new-instance v0, Lrx0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lrx0;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->t0(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final s0()Lteam/opay/pay/opay/PaymentViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/opay/PaymentViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final s1(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/pay/cashier/TransferPreOrder;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->s0()Lteam/opay/pay/opay/PaymentViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lsx0;

    .line 11
    .line 12
    invoke-direct {v1, p1, p0}, Lsx0;-><init>(Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0, p1, v1}, Lteam/opay/pay/opay/PaymentViewModel;->n0(Landroidx/fragment/app/Fragment;Lteam/opay/pay/cashier/TransferPreOrder;Lkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private final showProgress(Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->K0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->S(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->p0()Lteam/opay/pay/home/tabs/MoneyTransferViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;->x(Z)V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    sget-object v1, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    move-object v2, p0

    .line 24
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->g(Lteam/opay/pay/util/OpayLoadingWindow$Companion;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    xor-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->i1(Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private final t0(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/cashier/TransferPreOrder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->H0()Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "getViewLifecycleOwner(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ltx0;

    .line 15
    .line 16
    invoke-direct {v2, p0, p1}, Ltx0;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {v0, p1, v1, v2}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->q0(ZLag8;Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static final t1(Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 16

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
    sget-object v3, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->Companion:Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher$Companion;

    .line 8
    .line 9
    invoke-virtual {v3}, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher$Companion;->a()Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v3}, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->getAaShowConfirm()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x1

    .line 21
    if-ne v5, v6, :cond_0

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/TransferPreOrder;->getTransferCheckRequest()Lteam/opay/pay/cashier/TransferCheckRequest;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v5}, Lteam/opay/pay/cashier/TransferCheckRequest;->e()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    sget-object v5, Lteam/opay/pay/home/tabs/TransferAlertTipDialog;->q:Lteam/opay/pay/home/tabs/TransferAlertTipDialog$Companion;

    .line 34
    .line 35
    new-instance v15, Lteam/opay/pay/home/tabs/TransferAlertData;

    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->B0()Lteam/opay/core/api/GraphQL$ServiceType;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v6}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-virtual {v3}, Lteam/opay/pay/transfer/contact/view/TransferCheckConfigSwitcher;->getAaConfirmDesc()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-direct/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->s0()Lteam/opay/pay/opay/PaymentViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v9, 0x2

    .line 55
    invoke-static {v3, v0, v6, v9, v4}, Lteam/opay/pay/opay/PaymentViewModel;->P(Lteam/opay/pay/opay/PaymentViewModel;Lteam/opay/pay/cashier/TransferPreOrder;ZILjava/lang/Object;)Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    const/16 v14, 0x10

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    const-string v9, "confirm"

    .line 63
    .line 64
    const/4 v11, 0x0

    .line 65
    const/4 v12, 0x0

    .line 66
    const-string v13, "default_transfer"

    .line 67
    .line 68
    move-object v6, v15

    .line 69
    move-object v4, v15

    .line 70
    move-object v15, v3

    .line 71
    invoke-direct/range {v6 .. v15}, Lteam/opay/pay/home/tabs/TransferAlertData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v4}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog$Companion;->b(Lteam/opay/pay/home/tabs/TransferAlertData;)Lteam/opay/pay/home/tabs/TransferAlertTipDialog;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    new-instance v4, Lux0;

    .line 79
    .line 80
    invoke-direct {v4, v1, v0, v2}, Lux0;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/pay/cashier/OrderInfo;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog;->a0(Lkotlin/jvm/functions/Function0;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lvx0;

    .line 87
    .line 88
    invoke-direct {v0, v1, v2}, Lvx0;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/pay/cashier/OrderInfo;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v0}, Lteam/opay/pay/home/tabs/TransferAlertTipDialog;->Z(Lkotlin/jvm/functions/Function0;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v3}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_0
    new-instance v3, Lteam/opay/pay/cashier/PaymentTask;

    .line 99
    .line 100
    invoke-direct {v3, v1}, Lteam/opay/pay/cashier/PaymentTask;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/TransferPreOrder;->getServiceType()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->A0()Lteam/opay/core/api/GraphQL$ServiceId;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ServiceId;->getValue()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    if-eqz v2, :cond_1

    .line 116
    .line 117
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    :cond_1
    if-nez v4, :cond_2

    .line 122
    .line 123
    const-string v1, ""

    .line 124
    .line 125
    move-object v7, v1

    .line 126
    goto :goto_0

    .line 127
    :cond_2
    move-object v7, v4

    .line 128
    :goto_0
    new-instance v1, Lteam/opay/swarmfoundation/payment/PayInput;

    .line 129
    .line 130
    const/16 v14, 0xf8

    .line 131
    .line 132
    const/4 v15, 0x0

    .line 133
    const/4 v9, 0x0

    .line 134
    const/4 v10, 0x0

    .line 135
    const/4 v11, 0x0

    .line 136
    const/4 v12, 0x0

    .line 137
    const/4 v13, 0x0

    .line 138
    move-object v5, v1

    .line 139
    invoke-direct/range {v5 .. v15}, Lteam/opay/swarmfoundation/payment/PayInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/cashier/TransferPreOrder;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    const/16 v9, 0xc

    .line 147
    .line 148
    const/4 v7, 0x0

    .line 149
    const/4 v8, 0x0

    .line 150
    move-object v4, v3

    .line 151
    invoke-static/range {v4 .. v10}, Lteam/opay/pay/cashier/PaymentTask;->c(Lteam/opay/pay/cashier/PaymentTask;Lteam/opay/swarmfoundation/payment/PayInput;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZZILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    return-object v0
.end method

.method public static final u0(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;)Lkotlin/Unit;
    .locals 23

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->m0()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, ""

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    :cond_0
    const-string v3, "businessSceneSource"

    .line 16
    .line 17
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->F0()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const-string v3, "usernameDisplayTime"

    .line 27
    .line 28
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->h0()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const-string v1, "businessPreInteraction"

    .line 38
    .line 39
    const-string v3, "first"

    .line 40
    .line 41
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_2
    const/4 v1, 0x0

    .line 45
    if-eqz p2, :cond_7

    .line 46
    .line 47
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->b()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_7

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_6

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    move-object v5, v4

    .line 68
    check-cast v5, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 69
    .line 70
    invoke-virtual {v5}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-lez v6, :cond_4

    .line 79
    .line 80
    invoke-virtual {v5}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {v5}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountNo()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    if-nez v5, :cond_5

    .line 90
    .line 91
    move-object v5, v2

    .line 92
    :cond_5
    :goto_0
    invoke-static {v5}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->K0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v6}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->N()Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v6}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->c()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-static {v6}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_3

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_6
    move-object v4, v1

    .line 120
    :goto_1
    check-cast v4, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_7
    move-object v4, v1

    .line 124
    :goto_2
    const-string v3, "N"

    .line 125
    .line 126
    const-string v5, "Y"

    .line 127
    .line 128
    if-eqz v4, :cond_8

    .line 129
    .line 130
    move-object v4, v5

    .line 131
    goto :goto_3

    .line 132
    :cond_8
    move-object v4, v3

    .line 133
    :goto_3
    if-eqz p2, :cond_b

    .line 134
    .line 135
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/bean/TransferPersonsRsp;->c()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    if-eqz v6, :cond_b

    .line 140
    .line 141
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_a

    .line 150
    .line 151
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    move-object v8, v7

    .line 156
    check-cast v8, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 157
    .line 158
    invoke-virtual {v8}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-static {v8}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->w0()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    invoke-static {v9}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-eqz v8, :cond_9

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_a
    move-object v7, v1

    .line 182
    :goto_4
    check-cast v7, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_b
    move-object v7, v1

    .line 186
    :goto_5
    if-eqz v7, :cond_c

    .line 187
    .line 188
    move-object v3, v5

    .line 189
    :cond_c
    const-string v5, "ifRecentContact"

    .line 190
    .line 191
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    const-string v4, "ifFavoriteContact"

    .line 195
    .line 196
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    new-instance v7, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 200
    .line 201
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->K0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->N()Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->a()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->i0()Lteam/opay/core/api/GraphQL$Currency;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$Currency;->a()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-direct {v7, v3, v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->B0()Lteam/opay/core/api/GraphQL$ServiceType;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->V0()Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->w0()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->v0()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->m0()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    if-nez v4, :cond_d

    .line 249
    .line 250
    move-object v13, v2

    .line 251
    goto :goto_6

    .line 252
    :cond_d
    move-object v13, v4

    .line 253
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->K0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v2}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->N()Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v2}, Lteam/opay/pay/home/tabs/MobileTransferInfo;->b()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v14

    .line 265
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->U0()Z

    .line 266
    .line 267
    .line 268
    move-result v17

    .line 269
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->C0()Z

    .line 270
    .line 271
    .line 272
    move-result v16

    .line 273
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->G0()Lteam/opay/pay/cashier/TransferCheckRequest;

    .line 274
    .line 275
    .line 276
    move-result-object v18

    .line 277
    new-instance v2, Lteam/opay/pay/cashier/TransferPreOrder;

    .line 278
    .line 279
    move-object v5, v2

    .line 280
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    const/16 v21, 0x6260

    .line 285
    .line 286
    const/16 v22, 0x0

    .line 287
    .line 288
    const/4 v11, 0x0

    .line 289
    const/4 v12, 0x0

    .line 290
    const/4 v15, 0x0

    .line 291
    const/16 v19, 0x0

    .line 292
    .line 293
    const/16 v20, 0x0

    .line 294
    .line 295
    invoke-direct/range {v5 .. v22}, Lteam/opay/pay/cashier/TransferPreOrder;-><init>(Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLteam/opay/pay/cashier/TransferCheckRequest;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->k0()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v2, v3}, Lteam/opay/pay/cashier/TransferPreOrder;->setFirstTransferText(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->L0()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {v2, v3}, Lteam/opay/pay/cashier/TransferPreOrder;->setFirstTransferTextConfirmAmount(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->M0()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v2, v3}, Lteam/opay/pay/cashier/TransferPreOrder;->setFirstTransferTextConfirmName(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->E0()Ljava/lang/Boolean;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-virtual {v2, v3}, Lteam/opay/pay/cashier/TransferPreOrder;->setTimeChecked(Ljava/lang/Boolean;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->q1()Z

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    invoke-virtual {v2, v3}, Lteam/opay/pay/cashier/TransferPreOrder;->setJumpCheckWhenFirstShown(Z)V

    .line 331
    .line 332
    .line 333
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->I0()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-virtual {v2, v3}, Lteam/opay/pay/cashier/TransferPreOrder;->setUserIcon(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->q0()Lteam/opay/core/api/graphql/AASendMoneyPageInfo;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    if-eqz v3, :cond_e

    .line 345
    .line 346
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/AASendMoneyPageInfo;->getErrorFirstName()Ljava/util/List;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    goto :goto_7

    .line 351
    :cond_e
    move-object v3, v1

    .line 352
    :goto_7
    invoke-virtual {v2, v3}, Lteam/opay/pay/cashier/TransferPreOrder;->setErrorNames(Ljava/util/List;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->q0()Lteam/opay/core/api/graphql/AASendMoneyPageInfo;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    if-eqz v3, :cond_f

    .line 360
    .line 361
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/AASendMoneyPageInfo;->getSuccessText()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    goto :goto_8

    .line 366
    :cond_f
    move-object v3, v1

    .line 367
    :goto_8
    invoke-virtual {v2, v3}, Lteam/opay/pay/cashier/TransferPreOrder;->setErrorNamesDialogContent(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->q0()Lteam/opay/core/api/graphql/AASendMoneyPageInfo;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    if-eqz v3, :cond_10

    .line 375
    .line 376
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/AASendMoneyPageInfo;->getErrorText()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    :cond_10
    invoke-virtual {v2, v1}, Lteam/opay/pay/cashier/TransferPreOrder;->setErrorNamesDialogCheckErrorTips(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v0}, Lteam/opay/pay/cashier/TransferPreOrder;->setRiskMap(Ljava/util/Map;)V

    .line 384
    .line 385
    .line 386
    move-object/from16 v0, p1

    .line 387
    .line 388
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 392
    .line 393
    return-object v0
.end method

.method public static final u1(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/pay/cashier/TransferPreOrder;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 12

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/PaymentTask;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/pay/cashier/PaymentTask;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/cashier/TransferPreOrder;->getServiceType()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->A0()Lteam/opay/core/api/GraphQL$ServiceId;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$ServiceId;->getValue()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    if-nez p0, :cond_1

    .line 27
    .line 28
    const-string p0, ""

    .line 29
    .line 30
    :cond_1
    move-object v3, p0

    .line 31
    new-instance p0, Lteam/opay/swarmfoundation/payment/PayInput;

    .line 32
    .line 33
    const/16 v10, 0xf8

    .line 34
    .line 35
    const/4 v11, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    move-object v1, p0

    .line 42
    invoke-direct/range {v1 .. v11}, Lteam/opay/swarmfoundation/payment/PayInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/pay/cashier/TransferPreOrder;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/16 v5, 0xc

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/cashier/PaymentTask;->c(Lteam/opay/pay/cashier/PaymentTask;Lteam/opay/swarmfoundation/payment/PayInput;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZZILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    return-object p0
.end method

.method public static final v1(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;Lteam/opay/pay/cashier/OrderInfo;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->s0()Lteam/opay/pay/opay/PaymentViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OrderInfo;->getOrderNo()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    const-string v1, ""

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    move-object p1, v1

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v2, "getViewLifecycleOwner(...)"

    .line 23
    .line 24
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "C10002"

    .line 28
    .line 29
    invoke-virtual {v0, p1, v2, v1, p0}, Lteam/opay/pay/opay/PaymentViewModel;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lag8;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method


# virtual methods
.method public A0()Lteam/opay/core/api/GraphQL$ServiceId;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->y:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 2
    .line 3
    return-object v0
.end method

.method public B0()Lteam/opay/core/api/GraphQL$ServiceType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->x:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 2
    .line 3
    return-object v0
.end method

.method public C0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public D0()Lteam/opay/core/api/graphql/StampDutyInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public abstract E0()Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public F0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public G0()Lteam/opay/pay/cashier/TransferCheckRequest;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lteam/opay/pay/cashier/TransferCheckRequest;

    .line 2
    .line 3
    const/16 v5, 0xf

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v0, v7

    .line 11
    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/cashier/TransferCheckRequest;-><init>(ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    return-object v7
.end method

.method public H0()Lteam/opay/pay/transfer/contact/TransferContactViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public abstract I0()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public J0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->B()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "new_aa_user"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "old_aa_user"

    .line 17
    .line 18
    :goto_0
    return-object v0
.end method

.method public K0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->r:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public abstract L0()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract M0()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public N0()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->s0()Lteam/opay/pay/opay/PaymentViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/opay/PaymentViewModel;->M()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lqx0;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lqx0;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$a;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public abstract U0()Z
.end method

.method public abstract V0()Z
.end method

.method public W0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public X0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public abstract Y0(Z)V
.end method

.method public abstract Z0(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public a1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {v0}, Lli2;->e(Landroid/app/Activity;)Lkotlin/Unit;

    .line 29
    .line 30
    .line 31
    :cond_1
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 32
    .line 33
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->z()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    sget-object v0, Lx7b;->a:Lx7b;

    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->x0()Lteam/opay/pay/transfer/contact/view/RemarkView;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/view/RemarkView;->getRemarkContent()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "child_remark_content"

    .line 54
    .line 55
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x1

    .line 60
    new-array v2, v2, [Lkotlin/Pair;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    aput-object v1, v2, v3

    .line 64
    .line 65
    const-string v1, "aa_transfer_enter_money_child_remark_click"

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    sget-object v0, Lql8;->a:Lql8;

    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v2, 0x2

    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-static {v0, v1, v3, v2, v3}, Lql8;->l(Lql8;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    new-instance v0, Ldy0;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Ldy0;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->f1(Lkotlin/jvm/functions/Function1;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    return-void
.end method

.method public c1(Lteam/opay/pay/home/pay/Service;)V
    .locals 0
    .param p1    # Lteam/opay/pay/home/pay/Service;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public final d1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->K0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/payment/ServiceViewModel;->w()Lteam/opay/pay/home/pay/Service;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->c1(Lteam/opay/pay/home/pay/Service;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcy0;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcy0;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->r0(Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final e0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->o0()Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->K0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lteam/opay/pay/payment/ServiceViewModel;->w()Lteam/opay/pay/home/pay/Service;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/pay/home/pay/Service;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v1, v2

    .line 24
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->K0()Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lteam/opay/pay/payment/ServiceViewModel;->w()Lteam/opay/pay/home/pay/Service;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3}, Lteam/opay/pay/home/pay/Service;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v3, v2

    .line 40
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->q0()Lteam/opay/core/api/graphql/AASendMoneyPageInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/AASendMoneyPageInfo;->getRemainingTransferAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_2
    move-object v4, v2

    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->B0()Lteam/opay/core/api/GraphQL$ServiceType;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->D0()Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    new-instance v7, Ley0;

    .line 64
    .line 65
    invoke-direct {v7, p0}, Ley0;-><init>(Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;)V

    .line 66
    .line 67
    .line 68
    move-object v2, v3

    .line 69
    move-object v3, v4

    .line 70
    move-object v4, p0

    .line 71
    invoke-virtual/range {v0 .. v7}, Lteam/opay/pay/android/views/NoticeAmountInputView;->w(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Landroidx/fragment/app/Fragment;Ljava/lang/String;Lteam/opay/core/api/graphql/StampDutyInfo;Lkotlin/jvm/functions/Function1;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method public abstract f1(Lkotlin/jvm/functions/Function1;)V
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public g0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->o0()Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/android/views/NoticeAmountInputView;->k()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public h0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final j0()Lp60;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->o:Lp60;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "firebaseAssistantUserActions"

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

.method public j1(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public abstract k0()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public k1(Lteam/opay/core/api/graphql/AASendMoneyPageInfo;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/graphql/AASendMoneyPageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->A:Lteam/opay/core/api/graphql/AASendMoneyPageInfo;

    .line 2
    .line 3
    return-void
.end method

.method public l0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->m0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->m0()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const-string v0, "AARegular"

    .line 20
    .line 21
    :goto_1
    return-object v0
.end method

.method public l1(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->t:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public m0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public m1(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->u:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public abstract n0()Lteam/opay/pay/android/views/NoticeAmountInputView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public n1(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 1
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->o0()Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lteam/opay/pay/android/views/NoticeAmountInputView;->setRemainingTransferAmount(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final o0()Lteam/opay/pay/android/views/NoticeAmountInputView;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->p:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/android/views/NoticeAmountInputView;

    .line 8
    .line 9
    return-object v0
.end method

.method public o1(Lteam/opay/core/api/GraphQL$ServiceId;)V
    .locals 1
    .param p1    # Lteam/opay/core/api/GraphQL$ServiceId;
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
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->y:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 7
    .line 8
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lteam/opay/pay/base/FragmentKt;->m(Landroidx/fragment/app/Fragment;)Z

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/16 p3, 0x12d

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-ne p1, p3, :cond_5

    .line 15
    .line 16
    const/16 p1, 0xca

    .line 17
    .line 18
    const/4 p3, 0x1

    .line 19
    if-eq p2, p1, :cond_3

    .line 20
    .line 21
    const/16 p1, 0xcb

    .line 22
    .line 23
    if-eq p2, p1, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->showProgress(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance p2, Lteam/opay/pay/transfer/contact/event/ContactUpdateEvent;

    .line 34
    .line 35
    invoke-direct {p2, p3}, Lteam/opay/pay/transfer/contact/event/ContactUpdateEvent;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lteam/opay/pay/home/MainActivity;->Companion:Lteam/opay/pay/home/MainActivity$Companion;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-nez p2, :cond_2

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    invoke-virtual {p1, p2}, Lteam/opay/pay/home/MainActivity$Companion;->a(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance p2, Lteam/opay/pay/transfer/contact/event/ContactUpdateEvent;

    .line 59
    .line 60
    invoke-direct {p2, p3}, Lteam/opay/pay/transfer/contact/event/ContactUpdateEvent;-><init>(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lteam/opay/pay/home/MainActivity;->Companion:Lteam/opay/pay/home/MainActivity$Companion;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    if-nez p2, :cond_4

    .line 73
    .line 74
    return-void

    .line 75
    :cond_4
    invoke-virtual {p1, p2}, Lteam/opay/pay/home/MainActivity$Companion;->a(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    invoke-direct {p0, v0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->showProgress(Z)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    sget-object p2, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->C:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->z:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->initView()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->N0()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public p0()Lteam/opay/pay/home/tabs/MoneyTransferViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->s:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/tabs/MoneyTransferViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public p1(Lteam/opay/core/api/GraphQL$ServiceType;)V
    .locals 1
    .param p1    # Lteam/opay/core/api/GraphQL$ServiceType;
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
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->x:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 7
    .line 8
    return-void
.end method

.method public q0()Lteam/opay/core/api/graphql/AASendMoneyPageInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->A:Lteam/opay/core/api/graphql/AASendMoneyPageInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract q1()Z
.end method

.method public abstract r0(Lkotlin/jvm/functions/Function1;)V
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/core/api/graphql/AASendMoneyPageInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public v0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public w0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract x0()Lteam/opay/pay/transfer/contact/view/RemarkView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract y0()Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final z0()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/BaseTransferSendMoneyFragment;->q:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    return-object v0
.end method
