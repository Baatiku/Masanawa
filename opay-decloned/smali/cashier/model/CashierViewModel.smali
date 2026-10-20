.class public final Lcashier/model/CashierViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "CashierViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcashier/model/CashierViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000 02\u00020\u0001:\u0002\u00ed\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J1\u0010\u0010\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0010\u0010\u000f\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u000e\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J+\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ%\u0010\u001e\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u001d0\r0\u001c2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001d\u0010#\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u000b\u00a2\u0006\u0004\u0008#\u0010$J\r\u0010%\u001a\u00020\t\u00a2\u0006\u0004\u0008%\u0010&J\u0015\u0010)\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\'\u00a2\u0006\u0004\u0008)\u0010*J#\u0010,\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\r0\u001c2\u0006\u0010+\u001a\u00020 \u00a2\u0006\u0004\u0008,\u0010-J\u0015\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.\u00a2\u0006\u0004\u00080\u00101J\r\u00102\u001a\u00020\u0006\u00a2\u0006\u0004\u00082\u0010\u0008J\u0017\u00105\u001a\u0004\u0018\u0001042\u0006\u00103\u001a\u00020\u000b\u00a2\u0006\u0004\u00085\u00106J\u0015\u00107\u001a\u00020\t2\u0006\u00103\u001a\u00020\u000b\u00a2\u0006\u0004\u00087\u00108J\u0015\u0010:\u001a\u0002092\u0006\u00103\u001a\u00020\u000b\u00a2\u0006\u0004\u0008:\u0010;J\u001d\u0010=\u001a\u00020\u00062\u0006\u0010<\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020 \u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010?\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008?\u0010\u0008J\u0017\u0010@\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008@\u0010AR$\u0010H\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR$\u0010P\u001a\u0004\u0018\u00010I8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR*\u0010Y\u001a\u00020Q2\u0006\u0010R\u001a\u00020Q8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR\"\u0010a\u001a\u00020Z8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010\\\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R\u001d\u0010f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010eR\"\u0010k\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008g\u0010\u0007\u001a\u0004\u0008h\u0010&\"\u0004\u0008i\u0010jR%\u0010p\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020m\u0018\u00010l0\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008n\u0010c\u001a\u0004\u0008o\u0010eR\"\u0010x\u001a\u00020q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008r\u0010s\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR\u001d\u0010|\u001a\u0008\u0012\u0004\u0012\u00020y0\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008z\u0010c\u001a\u0004\u0008{\u0010eR&\u0010\u0083\u0001\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0004\u0008}\u0010~\u001a\u0005\u0008\u007f\u0010\u0080\u0001\"\u0006\u0008\u0081\u0001\u0010\u0082\u0001R*\u0010\u008b\u0001\u001a\u00030\u0084\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001R&\u0010\u0090\u0001\u001a\t\u0012\u0005\u0012\u00030\u008c\u00010\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u008d\u0001\u0010\u008e\u0001\u001a\u0005\u0008\u008f\u0001\u0010eR\u001d\u0010\u0096\u0001\u001a\u00030\u0091\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0092\u0001\u0010\u0093\u0001\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001R,\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u0097\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0098\u0001\u0010\u0099\u0001\u001a\u0006\u0008\u009a\u0001\u0010\u009b\u0001\"\u0006\u0008\u009c\u0001\u0010\u009d\u0001R \u0010\u00a1\u0001\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001c8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u009f\u0001\u0010c\u001a\u0005\u0008\u00a0\u0001\u0010eR*\u0010\u00a9\u0001\u001a\u00030\u00a2\u00018\u0006@\u0006X\u0086.\u00a2\u0006\u0018\n\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001\u001a\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001\"\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001R$\u0010\u00b0\u0001\u001a\n\u0012\u0005\u0012\u00030\u00ab\u00010\u00aa\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00ae\u0001\u0010\u00af\u0001R*\u0010\u00b8\u0001\u001a\u00030\u00b1\u00018\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001\u001a\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001\"\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001R.\u0010\u00be\u0001\u001a\t\u0012\u0005\u0012\u00030\u00b9\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u00ba\u0001\u0010c\u001a\u0005\u0008\u00bb\u0001\u0010e\"\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001R.\u0010\u00c2\u0001\u001a\t\u0012\u0005\u0012\u00030\u00b9\u00010\u001c8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0016\n\u0005\u0008\u00bf\u0001\u0010c\u001a\u0005\u0008\u00c0\u0001\u0010e\"\u0006\u0008\u00c1\u0001\u0010\u00bd\u0001R+\u0010\u00c9\u0001\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001\u001a\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001\"\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001R#\u0010\u00ce\u0001\u001a\u0005\u0018\u00010\u00ca\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00cb\u0001\u0010\u008e\u0001\u001a\u0006\u0008\u00cc\u0001\u0010\u00cd\u0001R\u0018\u0010\u00d0\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00cf\u0001\u0010\u0007R!\u0010\u00d5\u0001\u001a\u00030\u00d1\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00d2\u0001\u0010\u008e\u0001\u001a\u0006\u0008\u00d3\u0001\u0010\u00d4\u0001R!\u0010\u00da\u0001\u001a\u00030\u00d6\u00018FX\u0086\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00d7\u0001\u0010\u008e\u0001\u001a\u0006\u0008\u00d8\u0001\u0010\u00d9\u0001R(\u0010\u00de\u0001\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u00db\u0001\u0010~\u001a\u0006\u0008\u00dc\u0001\u0010\u0080\u0001\"\u0006\u0008\u00dd\u0001\u0010\u0082\u0001R!\u0010\u00e2\u0001\u001a\t\u0012\u0005\u0012\u00030\u00df\u00010\u001c8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u00e0\u0001\u0010c\u001a\u0005\u0008\u00e1\u0001\u0010eR)\u0010\u00e9\u0001\u001a\u00030\u00e3\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u00e4\u0001\u0010o\u001a\u0006\u0008\u00e5\u0001\u0010\u00e6\u0001\"\u0006\u0008\u00e7\u0001\u0010\u00e8\u0001R\u001f\u0010\u00ec\u0001\u001a\u00030\u00ea\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u00082\u0010\u008e\u0001\u001a\u0005\u0008s\u0010\u00eb\u0001\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u00ee\u0001"
    }
    d2 = {
        "Lcashier/model/CashierViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "appLi",
        "<init>",
        "(Landroid/app/Application;)V",
        "",
        "Z",
        "()V",
        "",
        "error",
        "",
        "verify",
        "Lcashier/net/ResultData;",
        "Lcashier/data/OrderInfo;",
        "it",
        "u0",
        "(ZLjava/lang/String;Lcashier/net/ResultData;)V",
        "Q",
        "(Ljr2;)Ljava/lang/Object;",
        "combin",
        "Lcashier/data/PayChannelItem;",
        "item",
        "Lcashier/util/CurrencyAmount;",
        "actualAmount",
        "L",
        "(ZLcashier/data/PayChannelItem;Lcashier/util/CurrencyAmount;)Ljava/lang/String;",
        "cashierLink",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcashier/data/CashierInfoRsp;",
        "s0",
        "(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;",
        "Lag8;",
        "lifecycleOwner",
        "reason",
        "F",
        "(Lag8;Ljava/lang/String;)V",
        "o0",
        "()Z",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "r0",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "owner",
        "G",
        "(Lag8;)Landroidx/lifecycle/MutableLiveData;",
        "Lcashier/data/CloseOrderReq;",
        "req",
        "E",
        "(Lcashier/data/CloseOrderReq;)V",
        "D",
        "paymentAuthType",
        "Lcashier/normalpay/ComplianceDialogInfo;",
        "f0",
        "(Ljava/lang/String;)Lcashier/normalpay/ComplianceDialogInfo;",
        "q0",
        "(Ljava/lang/String;)Z",
        "Lcashier/data/AuthInfo;",
        "g0",
        "(Ljava/lang/String;)Lcashier/data/AuthInfo;",
        "value",
        "W",
        "(Ljava/lang/String;Lag8;)V",
        "onCleared",
        "K",
        "(Lcashier/util/CurrencyAmount;)Ljava/lang/String;",
        "b",
        "Lcashier/data/CashierInfoRsp;",
        "h0",
        "()Lcashier/data/CashierInfoRsp;",
        "F0",
        "(Lcashier/data/CashierInfoRsp;)V",
        "paymentInfoRsp",
        "Lcashier/CashierDelegate;",
        "c",
        "Lcashier/CashierDelegate;",
        "R",
        "()Lcashier/CashierDelegate;",
        "x0",
        "(Lcashier/CashierDelegate;)V",
        "delegate",
        "Lcashier/data/CashierInput;",
        "values",
        "d",
        "Lcashier/data/CashierInput;",
        "N",
        "()Lcashier/data/CashierInput;",
        "w0",
        "(Lcashier/data/CashierInput;)V",
        "cashierInput",
        "Lcashier/data/NewPaymentInfoRequest;",
        "e",
        "Lcashier/data/NewPaymentInfoRequest;",
        "S",
        "()Lcashier/data/NewPaymentInfoRequest;",
        "y0",
        "(Lcashier/data/NewPaymentInfoRequest;)V",
        "deskReq",
        "f",
        "Landroidx/lifecycle/MutableLiveData;",
        "V",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadingEvent",
        "g",
        "T",
        "z0",
        "(Z)V",
        "disableMethode",
        "",
        "Lcashier/data/Ad;",
        "h",
        "I",
        "announcementLiveData",
        "",
        "i",
        "J",
        "l0",
        "()J",
        "I0",
        "(J)V",
        "v5StartTime",
        "Lorg/json/JSONObject;",
        "j",
        "k0",
        "refreshInfoLiveData",
        "k",
        "Ljava/lang/String;",
        "p0",
        "()Ljava/lang/String;",
        "H0",
        "(Ljava/lang/String;)V",
        "isPaymentProgress",
        "Lcashier/data/PayStatus;",
        "l",
        "Lcashier/data/PayStatus;",
        "d0",
        "()Lcashier/data/PayStatus;",
        "D0",
        "(Lcashier/data/PayStatus;)V",
        "payStatus",
        "Lcashier/data/OwealthOpenConfig;",
        "m",
        "Lid8;",
        "c0",
        "owealthOpenConfig",
        "Lcashier/data/ConfirmPayReq;",
        "n",
        "Lcashier/data/ConfirmPayReq;",
        "P",
        "()Lcashier/data/ConfirmPayReq;",
        "confirmPayReq",
        "Lcashier/data/PaymentItem;",
        "o",
        "Lcashier/data/PaymentItem;",
        "i0",
        "()Lcashier/data/PaymentItem;",
        "G0",
        "(Lcashier/data/PaymentItem;)V",
        "paymentItem",
        "p",
        "O",
        "closeOrderLiveData",
        "Lcashier/net/IPaymentApi;",
        "q",
        "Lcashier/net/IPaymentApi;",
        "e0",
        "()Lcashier/net/IPaymentApi;",
        "E0",
        "(Lcashier/net/IPaymentApi;)V",
        "paymentApi",
        "Lteam/opay/pay/websocket/IWsMessageDelegate;",
        "Lcashier/OrderChannelData;",
        "r",
        "Lteam/opay/pay/websocket/IWsMessageDelegate;",
        "Y",
        "()Lteam/opay/pay/websocket/IWsMessageDelegate;",
        "orderListener",
        "Lcashier/data/FailedInfo;",
        "s",
        "Lcashier/data/FailedInfo;",
        "U",
        "()Lcashier/data/FailedInfo;",
        "A0",
        "(Lcashier/data/FailedInfo;)V",
        "failedInfo",
        "Lcashier/data/CashierOrderResult;",
        "t",
        "n0",
        "setWsStatus",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "wsStatus",
        "u",
        "a0",
        "setOrderStatus$cashier_release",
        "orderStatus",
        "v",
        "Lcashier/data/OrderInfo;",
        "X",
        "()Lcashier/data/OrderInfo;",
        "C0",
        "(Lcashier/data/OrderInfo;)V",
        "orderInfo",
        "Lcashier/util/PollingConfigData;",
        "w",
        "j0",
        "()Lcashier/util/PollingConfigData;",
        "pollingConfig",
        "x",
        "inTopup",
        "Lkj;",
        "y",
        "H",
        "()Lkj;",
        "adService",
        "Lcashier/util/PayOrderStatusPolling;",
        "z",
        "b0",
        "()Lcashier/util/PayOrderStatusPolling;",
        "orderStatusPolling",
        "A",
        "M",
        "v0",
        "authUrl",
        "Lcashier/VerifyResult;",
        "B",
        "m0",
        "verifyPoolLiveData",
        "",
        "C",
        "getOrderCountDownTime",
        "()I",
        "B0",
        "(I)V",
        "orderCountDownTime",
        "La62;",
        "()La62;",
        "apiService",
        "Companion",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final E:Lcashier/model/CashierViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final I:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final J:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static K:Lcashier/data/CashierInput;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final B:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcashier/VerifyResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public C:I

.field public final D:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcashier/data/CashierInfoRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcashier/CashierDelegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lcashier/data/CashierInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lcashier/data/NewPaymentInfoRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroidx/lifecycle/MutableLiveData;
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

.field public g:Z

.field public final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcashier/data/Ad;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:J

.field public final j:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcashier/data/PayStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lcashier/data/ConfirmPayReq;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Lcashier/data/PaymentItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

.field public q:Lcashier/net/IPaymentApi;

.field public final r:Lteam/opay/pay/websocket/IWsMessageDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/websocket/IWsMessageDelegate<",
            "Lcashier/OrderChannelData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lcashier/data/FailedInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcashier/data/CashierOrderResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcashier/data/CashierOrderResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Lcashier/data/OrderInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final w:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Z

.field public final y:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final z:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcashier/model/CashierViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcashier/model/CashierViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 8
    .line 9
    const-string v0, "30010"

    .line 10
    .line 11
    const-string v1, "13029"

    .line 12
    .line 13
    const-string v2, "13037"

    .line 14
    .line 15
    const-string v3, "13038"

    .line 16
    .line 17
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcashier/model/CashierViewModel;->F:Ljava/util/List;

    .line 26
    .line 27
    const-string v0, "30003"

    .line 28
    .line 29
    const-string v1, "30002"

    .line 30
    .line 31
    const-string v2, "neterror"

    .line 32
    .line 33
    const-string v3, "timeout"

    .line 34
    .line 35
    const-string v4, "30001"

    .line 36
    .line 37
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcashier/model/CashierViewModel;->G:Ljava/util/List;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/4 v4, 0x2

    .line 58
    new-array v4, v4, [Ljava/lang/Integer;

    .line 59
    .line 60
    aput-object v1, v4, v0

    .line 61
    .line 62
    aput-object v3, v4, v2

    .line 63
    .line 64
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lcashier/model/CashierViewModel;->H:Ljava/util/List;

    .line 69
    .line 70
    const-string v17, "13039"

    .line 71
    .line 72
    const-string v18, "30010"

    .line 73
    .line 74
    const-string v1, "21001"

    .line 75
    .line 76
    const-string v2, "13024"

    .line 77
    .line 78
    const-string v3, "13025"

    .line 79
    .line 80
    const-string v4, "13026"

    .line 81
    .line 82
    const-string v5, "13027"

    .line 83
    .line 84
    const-string v6, "13028"

    .line 85
    .line 86
    const-string v7, "13029"

    .line 87
    .line 88
    const-string v8, "15001"

    .line 89
    .line 90
    const-string v9, "15006"

    .line 91
    .line 92
    const-string v10, "15007"

    .line 93
    .line 94
    const-string v11, "13044"

    .line 95
    .line 96
    const-string v12, "13045"

    .line 97
    .line 98
    const-string v13, "30009"

    .line 99
    .line 100
    const-string v14, "30011"

    .line 101
    .line 102
    const-string v15, "13037"

    .line 103
    .line 104
    const-string v16, "13038"

    .line 105
    .line 106
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sput-object v0, Lcashier/model/CashierViewModel;->I:[Ljava/lang/String;

    .line 111
    .line 112
    sget-object v0, Lcashier/model/CashierViewModel$Companion$generator$2;->INSTANCE:Lcashier/model/CashierViewModel$Companion$generator$2;

    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lcashier/model/CashierViewModel;->J:Lid8;

    .line 119
    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 26
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "appLi"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcashier/data/CashierInput;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v1, v2, v3, v2}, Lcashier/data/CashierInput;-><init>(Lteam/opay/swarmfoundation/payment/PayInput;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Lcashier/model/CashierViewModel;->d:Lcashier/data/CashierInput;

    .line 21
    .line 22
    new-instance v1, Lcashier/data/NewPaymentInfoRequest;

    .line 23
    .line 24
    invoke-direct {v1}, Lcashier/data/NewPaymentInfoRequest;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lcashier/model/CashierViewModel;->e:Lcashier/data/NewPaymentInfoRequest;

    .line 28
    .line 29
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lcashier/model/CashierViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, v0, Lcashier/model/CashierViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, v0, Lcashier/model/CashierViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    const-string v1, ""

    .line 51
    .line 52
    iput-object v1, v0, Lcashier/model/CashierViewModel;->k:Ljava/lang/String;

    .line 53
    .line 54
    sget-object v2, Lcashier/data/PayStatus;->NORMAL:Lcashier/data/PayStatus;

    .line 55
    .line 56
    iput-object v2, v0, Lcashier/model/CashierViewModel;->l:Lcashier/data/PayStatus;

    .line 57
    .line 58
    sget-object v2, Lcashier/model/CashierViewModel$owealthOpenConfig$2;->INSTANCE:Lcashier/model/CashierViewModel$owealthOpenConfig$2;

    .line 59
    .line 60
    invoke-static {v2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iput-object v2, v0, Lcashier/model/CashierViewModel;->m:Lid8;

    .line 65
    .line 66
    new-instance v2, Lcashier/data/ConfirmPayReq;

    .line 67
    .line 68
    new-instance v16, Lcashier/data/VerifyReqInfo;

    .line 69
    .line 70
    const/4 v7, 0x7

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    move-object/from16 v3, v16

    .line 76
    .line 77
    invoke-direct/range {v3 .. v8}, Lcashier/data/VerifyReqInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    .line 79
    .line 80
    new-instance v25, Lcashier/data/ValidPoolInfo;

    .line 81
    .line 82
    iget-object v3, v0, Lcashier/model/CashierViewModel;->c:Lcashier/CashierDelegate;

    .line 83
    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    invoke-interface {v3}, Lcashier/CashierDelegate;->getSupportValidationTypes()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_0

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_0
    :goto_0
    move-object/from16 v18, v3

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_1
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :goto_2
    const/16 v23, 0x1e

    .line 103
    .line 104
    const/16 v24, 0x0

    .line 105
    .line 106
    const/16 v19, 0x0

    .line 107
    .line 108
    const/16 v20, 0x0

    .line 109
    .line 110
    const/16 v21, 0x0

    .line 111
    .line 112
    const/16 v22, 0x0

    .line 113
    .line 114
    move-object/from16 v17, v25

    .line 115
    .line 116
    invoke-direct/range {v17 .. v24}, Lcashier/data/ValidPoolInfo;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    .line 118
    .line 119
    const/16 v19, 0x4fff

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    const/4 v5, 0x0

    .line 123
    const/4 v6, 0x0

    .line 124
    const/4 v7, 0x0

    .line 125
    const/4 v8, 0x0

    .line 126
    const/4 v9, 0x0

    .line 127
    const/4 v10, 0x0

    .line 128
    const/4 v11, 0x0

    .line 129
    const/4 v12, 0x0

    .line 130
    const/4 v13, 0x0

    .line 131
    const/4 v14, 0x0

    .line 132
    const/4 v15, 0x0

    .line 133
    const/16 v18, 0x0

    .line 134
    .line 135
    move-object v3, v2

    .line 136
    invoke-direct/range {v3 .. v20}, Lcashier/data/ConfirmPayReq;-><init>(Ljava/lang/String;Lcashier/util/CurrencyAmount;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcashier/util/CurrencyAmount;Lcashier/util/CurrencyAmount;Ljava/util/List;Ljava/lang/String;Lcashier/data/DeskActivityInfo;Ljava/lang/String;Ljava/lang/Boolean;Lcashier/data/VerifyReqInfo;Lcashier/data/ValidPoolInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    .line 138
    .line 139
    iput-object v2, v0, Lcashier/model/CashierViewModel;->n:Lcashier/data/ConfirmPayReq;

    .line 140
    .line 141
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 142
    .line 143
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object v2, v0, Lcashier/model/CashierViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 147
    .line 148
    new-instance v2, Lcashier/model/CashierViewModel$a;

    .line 149
    .line 150
    invoke-direct {v2, v0}, Lcashier/model/CashierViewModel$a;-><init>(Lcashier/model/CashierViewModel;)V

    .line 151
    .line 152
    .line 153
    iput-object v2, v0, Lcashier/model/CashierViewModel;->r:Lteam/opay/pay/websocket/IWsMessageDelegate;

    .line 154
    .line 155
    new-instance v2, Lcashier/data/FailedInfo;

    .line 156
    .line 157
    sget v3, Lteam/opay/pay/cashier/R$string;->pay_failed_header:I

    .line 158
    .line 159
    invoke-static {v3}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    sget v3, Lteam/opay/pay/cashier/R$string;->pay_failed_description:I

    .line 164
    .line 165
    invoke-static {v3}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    const/16 v10, 0x3c

    .line 170
    .line 171
    const/4 v9, 0x0

    .line 172
    move-object v3, v2

    .line 173
    invoke-direct/range {v3 .. v11}, Lcashier/data/FailedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 174
    .line 175
    .line 176
    iput-object v2, v0, Lcashier/model/CashierViewModel;->s:Lcashier/data/FailedInfo;

    .line 177
    .line 178
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 179
    .line 180
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 181
    .line 182
    .line 183
    iput-object v2, v0, Lcashier/model/CashierViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 184
    .line 185
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 186
    .line 187
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 188
    .line 189
    .line 190
    iput-object v2, v0, Lcashier/model/CashierViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 191
    .line 192
    new-instance v2, Lcashier/model/CashierViewModel$pollingConfig$2;

    .line 193
    .line 194
    invoke-direct {v2, v0}, Lcashier/model/CashierViewModel$pollingConfig$2;-><init>(Lcashier/model/CashierViewModel;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    iput-object v2, v0, Lcashier/model/CashierViewModel;->w:Lid8;

    .line 202
    .line 203
    sget-object v2, Lcashier/model/CashierViewModel$adService$2;->INSTANCE:Lcashier/model/CashierViewModel$adService$2;

    .line 204
    .line 205
    invoke-static {v2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iput-object v2, v0, Lcashier/model/CashierViewModel;->y:Lid8;

    .line 210
    .line 211
    new-instance v2, Lcashier/model/CashierViewModel$orderStatusPolling$2;

    .line 212
    .line 213
    invoke-direct {v2, v0}, Lcashier/model/CashierViewModel$orderStatusPolling$2;-><init>(Lcashier/model/CashierViewModel;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    iput-object v2, v0, Lcashier/model/CashierViewModel;->z:Lid8;

    .line 221
    .line 222
    iput-object v1, v0, Lcashier/model/CashierViewModel;->A:Ljava/lang/String;

    .line 223
    .line 224
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 225
    .line 226
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 227
    .line 228
    .line 229
    iput-object v1, v0, Lcashier/model/CashierViewModel;->B:Landroidx/lifecycle/MutableLiveData;

    .line 230
    .line 231
    const/4 v1, -0x1

    .line 232
    iput v1, v0, Lcashier/model/CashierViewModel;->C:I

    .line 233
    .line 234
    sget-object v1, Lcashier/model/CashierViewModel$apiService$2;->INSTANCE:Lcashier/model/CashierViewModel$apiService$2;

    .line 235
    .line 236
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    iput-object v1, v0, Lcashier/model/CashierViewModel;->D:Lid8;

    .line 241
    .line 242
    return-void
.end method

.method public static final synthetic A()Lcashier/data/CashierInput;
    .locals 1

    .line 1
    sget-object v0, Lcashier/model/CashierViewModel;->K:Lcashier/data/CashierInput;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic B(Lcashier/model/CashierViewModel;ZLjava/lang/String;Lcashier/net/ResultData;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcashier/model/CashierViewModel;->u0(ZLjava/lang/String;Lcashier/net/ResultData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic C(Lcashier/model/CashierViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcashier/model/CashierViewModel;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method private final Z()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcashier/model/CashierViewModel;->l:Lcashier/data/PayStatus;

    .line 4
    .line 5
    sget-object v2, Lcashier/data/PayStatus;->ORDER:Lcashier/data/PayStatus;

    .line 6
    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "payStatus != PayStatus.ORDER "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Lcashier/model/CashierViewModel;->l:Lcashier/data/PayStatus;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lcashier/model/CashierViewModel;->b0()Lcashier/util/PayOrderStatusPolling;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v1, v2}, Lcashier/util/PayOrderStatusPolling;->i(Z)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v1, v0, Lcashier/model/CashierViewModel;->v:Lcashier/data/OrderInfo;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Lcashier/data/OrderInfo;->a()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v1, v2

    .line 44
    :goto_0
    if-eqz v1, :cond_5

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_2
    iget-object v1, v0, Lcashier/model/CashierViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const-string v1, ""

    .line 61
    .line 62
    iput-object v1, v0, Lcashier/model/CashierViewModel;->A:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v4, Landroidx/lifecycle/MutableLiveData;

    .line 65
    .line 66
    invoke-direct {v4}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v3, Lcashier/model/CashierViewModel$getOrderStatus$1;

    .line 70
    .line 71
    invoke-direct {v3, v0}, Lcashier/model/CashierViewModel$getOrderStatus$1;-><init>(Lcashier/model/CashierViewModel;)V

    .line 72
    .line 73
    .line 74
    new-instance v5, Lcashier/model/CashierViewModel$b;

    .line 75
    .line 76
    invoke-direct {v5, v3}, Lcashier/model/CashierViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v5}, Landroidx/lifecycle/LiveData;->observeForever(Lvfa;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {p0 .. p0}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    new-instance v5, Lcashier/data/OrderRequest;

    .line 87
    .line 88
    iget-object v6, v0, Lcashier/model/CashierViewModel;->v:Lcashier/data/OrderInfo;

    .line 89
    .line 90
    if-eqz v6, :cond_3

    .line 91
    .line 92
    invoke-virtual {v6}, Lcashier/data/OrderInfo;->a()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move-object v6, v2

    .line 98
    :goto_1
    if-nez v6, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move-object v1, v6

    .line 102
    :goto_2
    const/4 v6, 0x2

    .line 103
    invoke-direct {v5, v1, v2, v6, v2}, Lcashier/data/OrderRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v3, v5}, Lcashier/net/IPaymentApi;->getOrderStatus(Lcashier/data/OrderRequest;)Lretrofit2/Call;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const/4 v7, 0x6

    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v5, 0x0

    .line 113
    const/4 v6, 0x0

    .line 114
    invoke-static/range {v3 .. v8}, Lcashier/net/CashLiveCallKt;->b(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_5
    :goto_3
    new-instance v1, Lcashier/data/FailedInfo;

    .line 119
    .line 120
    sget v2, Lteam/opay/pay/cashier/R$string;->pay_failed_header:I

    .line 121
    .line 122
    invoke-static {v2}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    const/16 v16, 0x3c

    .line 127
    .line 128
    const/16 v17, 0x0

    .line 129
    .line 130
    const-string v11, "Order id can not empty!"

    .line 131
    .line 132
    const/4 v12, 0x0

    .line 133
    const/4 v13, 0x0

    .line 134
    const/4 v14, 0x0

    .line 135
    const/4 v15, 0x0

    .line 136
    move-object v9, v1

    .line 137
    invoke-direct/range {v9 .. v17}, Lcashier/data/FailedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    .line 139
    .line 140
    iput-object v1, v0, Lcashier/model/CashierViewModel;->s:Lcashier/data/FailedInfo;

    .line 141
    .line 142
    iget-object v1, v0, Lcashier/model/CashierViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 143
    .line 144
    new-instance v8, Lcashier/data/CashierOrderResult;

    .line 145
    .line 146
    sget-object v3, Lcashier/data/CashierStatus;->FAILED:Lcashier/data/CashierStatus;

    .line 147
    .line 148
    const/4 v6, 0x4

    .line 149
    const/4 v7, 0x0

    .line 150
    const-string v4, ""

    .line 151
    .line 152
    const/4 v5, 0x0

    .line 153
    move-object v2, v8

    .line 154
    invoke-direct/range {v2 .. v7}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v8}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public static final synthetic r()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcashier/model/CashierViewModel;->H:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic s(Lcashier/model/CashierViewModel;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcashier/model/CashierViewModel;->Q(Ljr2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t()Lid8;
    .locals 1

    .line 1
    sget-object v0, Lcashier/model/CashierViewModel;->J:Lid8;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic t0(Lcashier/model/CashierViewModel;Ljava/lang/String;ILjava/lang/Object;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcashier/model/CashierViewModel;->s0(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final synthetic u(Lcashier/model/CashierViewModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcashier/model/CashierViewModel;->x:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic v()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcashier/model/CashierViewModel;->G:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic w()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcashier/model/CashierViewModel;->F:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic x(Lcashier/model/CashierViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcashier/model/CashierViewModel;->Z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y(Lcashier/model/CashierViewModel;)Lcashier/util/PollingConfigData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcashier/model/CashierViewModel;->j0()Lcashier/util/PollingConfigData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcashier/model/CashierViewModel;->I:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final A0(Lcashier/data/FailedInfo;)V
    .locals 1
    .param p1    # Lcashier/data/FailedInfo;
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
    iput-object p1, p0, Lcashier/model/CashierViewModel;->s:Lcashier/data/FailedInfo;

    .line 7
    .line 8
    return-void
.end method

.method public final B0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcashier/model/CashierViewModel;->C:I

    .line 2
    .line 3
    return-void
.end method

.method public final C0(Lcashier/data/OrderInfo;)V
    .locals 0
    .param p1    # Lcashier/data/OrderInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcashier/model/CashierViewModel;->v:Lcashier/data/OrderInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final D()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcashier/model/CashierViewModel;->C:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-gtz v1, :cond_5

    .line 7
    .line 8
    sget-object v3, Lcashier/util/CashierBus;->a:Lcashier/util/CashierBus;

    .line 9
    .line 10
    new-instance v5, Lcashier/util/CountDownEvent;

    .line 11
    .line 12
    iget-object v1, v0, Lcashier/model/CashierViewModel;->d:Lcashier/data/CashierInput;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, v2

    .line 26
    :goto_0
    const-string v9, ""

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    move-object v1, v9

    .line 31
    :cond_1
    const-string v4, "00m"

    .line 32
    .line 33
    const-string v6, "00s"

    .line 34
    .line 35
    invoke-direct {v5, v4, v6, v1}, Lcashier/util/CountDownEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v7, 0x4

    .line 39
    const/4 v8, 0x0

    .line 40
    const-string v4, "count_down_time_key"

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-static/range {v3 .. v8}, Lcashier/util/CashierBus;->f(Lcashier/util/CashierBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcashier/model/CashierViewModel;->l:Lcashier/data/PayStatus;

    .line 47
    .line 48
    sget-object v3, Lcashier/data/PayStatus;->FAILED:Lcashier/data/PayStatus;

    .line 49
    .line 50
    if-ne v1, v3, :cond_2

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    sget v1, Lteam/opay/pay/cashier/R$string;->pay_order_time_out_desc:I

    .line 54
    .line 55
    invoke-static {v1}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sget v3, Lteam/opay/pay/cashier/R$string;->pay_failed_header:I

    .line 60
    .line 61
    invoke-static {v3}, Lcashier/util/UtilsKt;->b(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    new-instance v3, Lcashier/data/FailedInfo;

    .line 66
    .line 67
    const/16 v17, 0x18

    .line 68
    .line 69
    const/16 v18, 0x0

    .line 70
    .line 71
    const-string v4, "1005027"

    .line 72
    .line 73
    const/4 v14, 0x0

    .line 74
    const/4 v15, 0x0

    .line 75
    const/16 v16, 0x1

    .line 76
    .line 77
    move-object v10, v3

    .line 78
    move-object v12, v1

    .line 79
    move-object v13, v4

    .line 80
    invoke-direct/range {v10 .. v18}, Lcashier/data/FailedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    .line 82
    .line 83
    iput-object v3, v0, Lcashier/model/CashierViewModel;->s:Lcashier/data/FailedInfo;

    .line 84
    .line 85
    iget-object v3, v0, Lcashier/model/CashierViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 86
    .line 87
    new-instance v5, Lcashier/data/CashierOrderResult;

    .line 88
    .line 89
    sget-object v6, Lcashier/data/CashierStatus;->FAILED:Lcashier/data/CashierStatus;

    .line 90
    .line 91
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-direct {v5, v6, v4, v7}, Lcashier/data/CashierOrderResult;-><init>(Lcashier/data/CashierStatus;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance v3, Lcashier/data/CloseOrderReq;

    .line 100
    .line 101
    iget-object v4, v0, Lcashier/model/CashierViewModel;->d:Lcashier/data/CashierInput;

    .line 102
    .line 103
    invoke-virtual {v4}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    if-eqz v4, :cond_3

    .line 108
    .line 109
    invoke-virtual {v4}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    :cond_3
    if-nez v2, :cond_4

    .line 114
    .line 115
    move-object v11, v9

    .line 116
    goto :goto_1

    .line 117
    :cond_4
    move-object v11, v2

    .line 118
    :goto_1
    const/16 v15, 0x8

    .line 119
    .line 120
    const/16 v16, 0x0

    .line 121
    .line 122
    const-string v12, "C10306"

    .line 123
    .line 124
    const/4 v14, 0x0

    .line 125
    move-object v10, v3

    .line 126
    move-object v13, v1

    .line 127
    invoke-direct/range {v10 .. v16}, Lcashier/data/CloseOrderReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v3}, Lcashier/model/CashierViewModel;->E(Lcashier/data/CloseOrderReq;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    invoke-static/range {p0 .. p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    new-instance v7, Lcashier/model/CashierViewModel$checkCountDownTime$1;

    .line 143
    .line 144
    invoke-direct {v7, v0, v2}, Lcashier/model/CashierViewModel$checkCountDownTime$1;-><init>(Lcashier/model/CashierViewModel;Ljr2;)V

    .line 145
    .line 146
    .line 147
    const/4 v8, 0x2

    .line 148
    const/4 v9, 0x0

    .line 149
    const/4 v6, 0x0

    .line 150
    invoke-static/range {v4 .. v9}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 151
    .line 152
    .line 153
    :goto_2
    return-void
.end method

.method public final D0(Lcashier/data/PayStatus;)V
    .locals 1
    .param p1    # Lcashier/data/PayStatus;
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
    iput-object p1, p0, Lcashier/model/CashierViewModel;->l:Lcashier/data/PayStatus;

    .line 7
    .line 8
    return-void
.end method

.method public final E(Lcashier/data/CloseOrderReq;)V
    .locals 7
    .param p1    # Lcashier/data/CloseOrderReq;
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
    sget-object v0, Lcashier/data/PayStatus;->CLOSED:Lcashier/data/PayStatus;

    .line 7
    .line 8
    iput-object v0, p0, Lcashier/model/CashierViewModel;->l:Lcashier/data/PayStatus;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcashier/net/IPaymentApi;->closeOrder(Lcashier/data/CloseOrderReq;)Lretrofit2/Call;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x6

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lcashier/net/CashLiveCallKt;->b(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final E0(Lcashier/net/IPaymentApi;)V
    .locals 1
    .param p1    # Lcashier/net/IPaymentApi;
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
    iput-object p1, p0, Lcashier/model/CashierViewModel;->q:Lcashier/net/IPaymentApi;

    .line 7
    .line 8
    return-void
.end method

.method public final F(Lag8;Ljava/lang/String;)V
    .locals 11
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    const-string v0, "reason"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcashier/model/CashierViewModel;->l:Lcashier/data/PayStatus;

    .line 12
    .line 13
    sget-object v1, Lcashier/data/PayStatus;->CLOSED:Lcashier/data/PayStatus;

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcashier/model/CashierViewModel$closePaymentOrder$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p2}, Lcashier/model/CashierViewModel$closePaymentOrder$1;-><init>(Lcashier/model/CashierViewModel;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcashier/model/CashierViewModel$b;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lcashier/model/CashierViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcashier/model/CashierViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v0, Lcashier/data/ClosePaymentRequest;

    .line 48
    .line 49
    iget-object v1, p0, Lcashier/model/CashierViewModel;->v:Lcashier/data/OrderInfo;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Lcashier/data/OrderInfo;->a()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object v1, v2

    .line 60
    :goto_0
    const-string v4, ""

    .line 61
    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    move-object v5, v4

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v5, v1

    .line 67
    :goto_1
    iget-object v1, p0, Lcashier/model/CashierViewModel;->v:Lcashier/data/OrderInfo;

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1}, Lcashier/data/OrderInfo;->b()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :cond_3
    if-nez v2, :cond_4

    .line 76
    .line 77
    move-object v6, v4

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move-object v6, v2

    .line 80
    :goto_2
    const/16 v9, 0x8

    .line 81
    .line 82
    const/4 v10, 0x0

    .line 83
    const/4 v8, 0x0

    .line 84
    move-object v4, v0

    .line 85
    move-object v7, p2

    .line 86
    invoke-direct/range {v4 .. v10}, Lcashier/data/ClosePaymentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, v0}, Lcashier/net/IPaymentApi;->closePaymentOrder(Lcashier/data/ClosePaymentRequest;)Lretrofit2/Call;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const/4 v6, 0x6

    .line 94
    const/4 v7, 0x0

    .line 95
    const/4 v4, 0x0

    .line 96
    const/4 v5, 0x0

    .line 97
    invoke-static/range {v2 .. v7}, Lcashier/net/CashLiveCallKt;->b(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final F0(Lcashier/data/CashierInfoRsp;)V
    .locals 0
    .param p1    # Lcashier/data/CashierInfoRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcashier/model/CashierViewModel;->b:Lcashier/data/CashierInfoRsp;

    .line 2
    .line 3
    return-void
.end method

.method public final G(Lag8;)Landroidx/lifecycle/MutableLiveData;
    .locals 8
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            ")",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcashier/net/ResultData<",
            "+",
            "Lcashier/data/OrderInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcashier/model/CashierViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcashier/model/CashierViewModel$confirmPay$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcashier/model/CashierViewModel$confirmPay$1;-><init>(Lcashier/model/CashierViewModel;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcashier/model/CashierViewModel$b;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Lcashier/model/CashierViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v1, p0, Lcashier/model/CashierViewModel;->n:Lcashier/data/ConfirmPayReq;

    .line 36
    .line 37
    invoke-interface {p1, v1}, Lcashier/net/IPaymentApi;->confirmPay(Lcashier/data/ConfirmPayReq;)Lretrofit2/Call;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v6, 0x6

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    move-object v3, v0

    .line 46
    invoke-static/range {v2 .. v7}, Lcashier/net/CashLiveCallKt;->b(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public final G0(Lcashier/data/PaymentItem;)V
    .locals 0
    .param p1    # Lcashier/data/PaymentItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcashier/model/CashierViewModel;->o:Lcashier/data/PaymentItem;

    .line 2
    .line 3
    return-void
.end method

.method public final H()Lkj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->y:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkj;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcashier/model/CashierViewModel;->k:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final I()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcashier/data/Ad;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcashier/model/CashierViewModel;->i:J

    .line 2
    .line 3
    return-void
.end method

.method public final J()La62;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->D:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, La62;

    .line 8
    .line 9
    return-object v0
.end method

.method public final K(Lcashier/util/CurrencyAmount;)Ljava/lang/String;
    .locals 16
    .param p1    # Lcashier/util/CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lcashier/model/CashierViewModel;->b:Lcashier/data/CashierInfoRsp;

    .line 11
    .line 12
    if-eqz v3, :cond_c

    .line 13
    .line 14
    invoke-virtual {v3}, Lcashier/data/CashierInfoRsp;->l()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_c

    .line 19
    .line 20
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v5, 0x0

    .line 25
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_c

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    add-int/lit8 v7, v5, 0x1

    .line 36
    .line 37
    if-gez v5, :cond_0

    .line 38
    .line 39
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 40
    .line 41
    .line 42
    :cond_0
    check-cast v6, Lcashier/data/PayChannelItem;

    .line 43
    .line 44
    invoke-virtual {v6}, Lcashier/data/PayChannelItem;->e()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    const-string v9, ","

    .line 49
    .line 50
    const/16 v10, 0x3a

    .line 51
    .line 52
    const/4 v11, 0x1

    .line 53
    if-eqz v8, :cond_a

    .line 54
    .line 55
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_1

    .line 60
    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :cond_1
    invoke-virtual {v6}, Lcashier/data/PayChannelItem;->e()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    instance-of v12, v8, Ljava/util/Collection;

    .line 68
    .line 69
    if-eqz v12, :cond_2

    .line 70
    .line 71
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    if-eqz v12, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    if-eqz v12, :cond_3

    .line 87
    .line 88
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    check-cast v12, Lcashier/data/PayChannelItem;

    .line 93
    .line 94
    invoke-virtual {v12}, Lcashier/data/PayChannelItem;->a()Lcashier/util/CurrencyAmount;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    if-eqz v12, :cond_4

    .line 99
    .line 100
    invoke-virtual {v12}, Lcashier/util/CurrencyAmount;->getPositive()Z

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    if-ne v12, v11, :cond_4

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    :goto_2
    invoke-virtual {v6}, Lcashier/data/PayChannelItem;->t()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    const-string v12, "Y"

    .line 112
    .line 113
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_4

    .line 118
    .line 119
    const/4 v8, 0x1

    .line 120
    goto :goto_3

    .line 121
    :cond_4
    const/4 v8, 0x0

    .line 122
    :goto_3
    invoke-virtual {v6}, Lcashier/data/PayChannelItem;->t()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    const-string v13, "N"

    .line 127
    .line 128
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    if-eqz v8, :cond_6

    .line 133
    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v6, ":0"

    .line 147
    .line 148
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    :cond_5
    :goto_4
    const/4 v8, 0x0

    .line 159
    goto/16 :goto_7

    .line 160
    .line 161
    :cond_6
    if-eqz v12, :cond_7

    .line 162
    .line 163
    new-instance v8, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v6, ":1"

    .line 176
    .line 177
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_7
    invoke-virtual {v6}, Lcashier/data/PayChannelItem;->e()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    const/4 v12, 0x0

    .line 197
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    if-eqz v13, :cond_5

    .line 202
    .line 203
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    add-int/lit8 v14, v12, 0x1

    .line 208
    .line 209
    if-gez v12, :cond_8

    .line 210
    .line 211
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 212
    .line 213
    .line 214
    :cond_8
    check-cast v13, Lcashier/data/PayChannelItem;

    .line 215
    .line 216
    new-instance v15, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v13}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v11, v13, v1}, Lcashier/model/CashierViewModel;->L(ZLcashier/data/PayChannelItem;Lcashier/util/CurrencyAmount;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6}, Lcashier/data/PayChannelItem;->e()Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    sub-int/2addr v4, v11

    .line 254
    if-eq v12, v4, :cond_9

    .line 255
    .line 256
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    :cond_9
    move v12, v14

    .line 260
    goto :goto_5

    .line 261
    :cond_a
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v6}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const/4 v8, 0x0

    .line 277
    invoke-virtual {v0, v8, v6, v1}, Lcashier/model/CashierViewModel;->L(ZLcashier/data/PayChannelItem;Lcashier/util/CurrencyAmount;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    :goto_7
    iget-object v4, v0, Lcashier/model/CashierViewModel;->b:Lcashier/data/CashierInfoRsp;

    .line 292
    .line 293
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4}, Lcashier/data/CashierInfoRsp;->l()Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    sub-int/2addr v4, v11

    .line 308
    if-eq v5, v4, :cond_b

    .line 309
    .line 310
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    :cond_b
    move v5, v7

    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    const-string v2, "sb.toString()"

    .line 321
    .line 322
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    return-object v1
.end method

.method public final L(ZLcashier/data/PayChannelItem;Lcashier/util/CurrencyAmount;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lcashier/data/PayChannelItem;->n()Ljava/lang/String;

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
    const-string v2, "OWealth"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Lcashier/data/PayChannelItem;->m()Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const-string p1, "2"

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_1
    const-string v1, "1"

    .line 34
    .line 35
    const-string v2, "0"

    .line 36
    .line 37
    if-eqz p1, :cond_5

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p2}, Lcashier/data/PayChannelItem;->a()Lcashier/util/CurrencyAmount;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lcashier/util/CurrencyAmount;->getPositive()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-ne v0, p1, :cond_2

    .line 53
    .line 54
    :goto_1
    move-object p1, v2

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    if-eqz p2, :cond_3

    .line 57
    .line 58
    invoke-virtual {p2}, Lcashier/data/PayChannelItem;->b()Lcashier/util/CurrencyAmount;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0, p3}, Lcashier/util/CurrencyAmount;->minus(Lcashier/util/CurrencyAmount;)Lcashier/util/CurrencyAmount;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Lcashier/util/CurrencyAmount;->getPositive()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-ne v0, p1, :cond_3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    if-eqz p2, :cond_4

    .line 78
    .line 79
    invoke-virtual {p2}, Lcashier/data/PayChannelItem;->b()Lcashier/util/CurrencyAmount;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    if-eqz p2, :cond_4

    .line 84
    .line 85
    invoke-virtual {p2, p3}, Lcashier/util/CurrencyAmount;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-ne p2, p1, :cond_4

    .line 90
    .line 91
    :goto_2
    goto :goto_1

    .line 92
    :cond_4
    move-object p1, v1

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    if-eqz p2, :cond_6

    .line 95
    .line 96
    invoke-virtual {p2}, Lcashier/data/PayChannelItem;->t()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_6
    const-string p1, "Y"

    .line 101
    .line 102
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :goto_3
    return-object p1
.end method

.method public final M()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()Lcashier/data/CashierInput;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->d:Lcashier/data/CashierInput;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcashier/model/CashierViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()Lcashier/data/ConfirmPayReq;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->n:Lcashier/data/ConfirmPayReq;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q(Ljr2;)Ljava/lang/Object;
    .locals 10
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
    instance-of v0, p1, Lcashier/model/CashierViewModel$getCountDownTime$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcashier/model/CashierViewModel$getCountDownTime$1;

    .line 7
    .line 8
    iget v1, v0, Lcashier/model/CashierViewModel$getCountDownTime$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcashier/model/CashierViewModel$getCountDownTime$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcashier/model/CashierViewModel$getCountDownTime$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcashier/model/CashierViewModel$getCountDownTime$1;-><init>(Lcashier/model/CashierViewModel;Ljr2;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcashier/model/CashierViewModel$getCountDownTime$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcashier/model/CashierViewModel$getCountDownTime$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Lcashier/model/CashierViewModel$getCountDownTime$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lcashier/model/CashierViewModel;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget p1, p0, Lcashier/model/CashierViewModel;->C:I

    .line 59
    .line 60
    div-int/lit8 v2, p1, 0x3c

    .line 61
    .line 62
    mul-int/lit8 v4, v2, 0x3c

    .line 63
    .line 64
    sub-int/2addr p1, v4

    .line 65
    const/16 v4, 0x6d

    .line 66
    .line 67
    const/16 v5, 0x30

    .line 68
    .line 69
    const/16 v6, 0xa

    .line 70
    .line 71
    if-ge v2, v6, :cond_3

    .line 72
    .line 73
    new-instance v7, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :goto_1
    const/16 v4, 0x73

    .line 108
    .line 109
    if-ge p1, v6, :cond_4

    .line 110
    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    :goto_2
    sget-object v4, Lcashier/util/CashierBus;->a:Lcashier/util/CashierBus;

    .line 146
    .line 147
    new-instance v6, Lcashier/util/CountDownEvent;

    .line 148
    .line 149
    iget-object v5, p0, Lcashier/model/CashierViewModel;->d:Lcashier/data/CashierInput;

    .line 150
    .line 151
    invoke-virtual {v5}, Lcashier/data/CashierInput;->b()Lteam/opay/swarmfoundation/payment/PayInput;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    if-eqz v5, :cond_5

    .line 156
    .line 157
    invoke-virtual {v5}, Lteam/opay/swarmfoundation/payment/PayInput;->getOrderNo()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    goto :goto_3

    .line 162
    :cond_5
    const/4 v5, 0x0

    .line 163
    :goto_3
    if-nez v5, :cond_6

    .line 164
    .line 165
    const-string v5, ""

    .line 166
    .line 167
    :cond_6
    invoke-direct {v6, v2, p1, v5}, Lcashier/util/CountDownEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const/4 v8, 0x4

    .line 171
    const/4 v9, 0x0

    .line 172
    const-string v5, "count_down_time_key"

    .line 173
    .line 174
    const/4 v7, 0x0

    .line 175
    invoke-static/range {v4 .. v9}, Lcashier/util/CashierBus;->f(Lcashier/util/CashierBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    iput-object p0, v0, Lcashier/model/CashierViewModel$getCountDownTime$1;->L$0:Ljava/lang/Object;

    .line 179
    .line 180
    iput v3, v0, Lcashier/model/CashierViewModel$getCountDownTime$1;->label:I

    .line 181
    .line 182
    const-wide/16 v4, 0x3e8

    .line 183
    .line 184
    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-ne p1, v1, :cond_7

    .line 189
    .line 190
    return-object v1

    .line 191
    :cond_7
    move-object v0, p0

    .line 192
    :goto_4
    iget p1, v0, Lcashier/model/CashierViewModel;->C:I

    .line 193
    .line 194
    sub-int/2addr p1, v3

    .line 195
    iput p1, v0, Lcashier/model/CashierViewModel;->C:I

    .line 196
    .line 197
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->D()V

    .line 198
    .line 199
    .line 200
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 201
    .line 202
    return-object p1
.end method

.method public final R()Lcashier/CashierDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->c:Lcashier/CashierDelegate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final S()Lcashier/data/NewPaymentInfoRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->e:Lcashier/data/NewPaymentInfoRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcashier/model/CashierViewModel;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final U()Lcashier/data/FailedInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->s:Lcashier/data/FailedInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final V()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcashier/model/CashierViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W(Ljava/lang/String;Lag8;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "owner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcashier/model/CashierViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcashier/model/CashierViewModel$getOWealthOpenCofing$1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcashier/model/CashierViewModel$getOWealthOpenCofing$1;-><init>(Lcashier/model/CashierViewModel;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcashier/model/CashierViewModel$b;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lcashier/model/CashierViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcashier/model/CashierViewModel;->J()La62;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-instance v0, Lcashier/data/OwealthOpenConfigRequest;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v2, 0x2

    .line 44
    invoke-direct {v0, p1, v1, v2, v1}, Lcashier/data/OwealthOpenConfigRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p2, v0}, La62;->a(Lcashier/data/OwealthOpenConfigRequest;)Lretrofit2/Call;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v6, 0x6

    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    invoke-static/range {v2 .. v7}, Lcashier/net/CashLiveCallKt;->b(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final X()Lcashier/data/OrderInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->v:Lcashier/data/OrderInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Y()Lteam/opay/pay/websocket/IWsMessageDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/websocket/IWsMessageDelegate<",
            "Lcashier/OrderChannelData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->r:Lteam/opay/pay/websocket/IWsMessageDelegate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcashier/data/CashierOrderResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b0()Lcashier/util/PayOrderStatusPolling;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->z:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcashier/util/PayOrderStatusPolling;

    .line 8
    .line 9
    return-object v0
.end method

.method public final c0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcashier/data/OwealthOpenConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->m:Lid8;

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

.method public final d0()Lcashier/data/PayStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->l:Lcashier/data/PayStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e0()Lcashier/net/IPaymentApi;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->q:Lcashier/net/IPaymentApi;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "paymentApi"

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

.method public final f0(Ljava/lang/String;)Lcashier/normalpay/ComplianceDialogInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "paymentAuthType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcashier/model/CashierViewModel;->g0(Ljava/lang/String;)Lcashier/data/AuthInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcashier/data/AuthInfo;->a()Lcashier/normalpay/ComplianceDialogInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final g0(Ljava/lang/String;)Lcashier/data/AuthInfo;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "paymentAuthType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "souce_cashback"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    new-instance p1, Lcashier/data/AuthInfo;

    .line 16
    .line 17
    iget-object v1, p0, Lcashier/model/CashierViewModel;->b:Lcashier/data/CashierInfoRsp;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcashier/data/CashierInfoRsp;->h()Lcashier/data/PaymentKycInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lcashier/data/PaymentKycInfo;->a()Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v1, v0

    .line 33
    :goto_0
    iget-object v2, p0, Lcashier/model/CashierViewModel;->b:Lcashier/data/CashierInfoRsp;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Lcashier/data/CashierInfoRsp;->q()Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-object v2, v0

    .line 43
    :goto_1
    iget-object v3, p0, Lcashier/model/CashierViewModel;->b:Lcashier/data/CashierInfoRsp;

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3}, Lcashier/data/CashierInfoRsp;->j()Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_2
    invoke-direct {p1, v1, v2, v0}, Lcashier/data/AuthInfo;-><init>(Ljava/util/LinkedHashMap;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 52
    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_3
    new-instance p1, Lcashier/data/AuthInfo;

    .line 56
    .line 57
    iget-object v1, p0, Lcashier/model/CashierViewModel;->b:Lcashier/data/CashierInfoRsp;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {v1}, Lcashier/data/CashierInfoRsp;->h()Lcashier/data/PaymentKycInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    invoke-virtual {v1}, Lcashier/data/PaymentKycInfo;->b()Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    move-object v1, v0

    .line 73
    :goto_2
    iget-object v2, p0, Lcashier/model/CashierViewModel;->b:Lcashier/data/CashierInfoRsp;

    .line 74
    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    invoke-virtual {v2}, Lcashier/data/CashierInfoRsp;->q()Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    move-object v2, v0

    .line 83
    :goto_3
    iget-object v3, p0, Lcashier/model/CashierViewModel;->b:Lcashier/data/CashierInfoRsp;

    .line 84
    .line 85
    if-eqz v3, :cond_6

    .line 86
    .line 87
    invoke-virtual {v3}, Lcashier/data/CashierInfoRsp;->j()Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :cond_6
    invoke-direct {p1, v1, v2, v0}, Lcashier/data/AuthInfo;-><init>(Ljava/util/LinkedHashMap;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 92
    .line 93
    .line 94
    :goto_4
    return-object p1
.end method

.method public final h0()Lcashier/data/CashierInfoRsp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->b:Lcashier/data/CashierInfoRsp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i0()Lcashier/data/PaymentItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->o:Lcashier/data/PaymentItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j0()Lcashier/util/PollingConfigData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->w:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcashier/util/PollingConfigData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final k0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcashier/model/CashierViewModel;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final m0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcashier/VerifyResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->B:Landroidx/lifecycle/MutableLiveData;

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
            "Lcashier/data/CashierOrderResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->b:Lcashier/data/CashierInfoRsp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcashier/data/CashierInfoRsp;->i()Ljava/lang/String;

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
    const-string v1, "1"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public onCleared()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcashier/model/CashierViewModel;->K:Lcashier/data/CashierInput;

    .line 6
    .line 7
    return-void
.end method

.method public final p0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q0(Ljava/lang/String;)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "paymentAuthType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcashier/model/CashierViewModel;->g0(Ljava/lang/String;)Lcashier/data/AuthInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcashier/data/AuthInfo;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    sget-object v1, Llcb;->a:Llcb;

    .line 23
    .line 24
    sget-object v5, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 25
    .line 26
    invoke-virtual {v5}, Lcashier/model/CashierViewModel$Companion;->d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    invoke-interface {v5}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->phone()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v5, 0x0

    .line 38
    :goto_0
    if-nez v5, :cond_2

    .line 39
    .line 40
    const-string v5, ""

    .line 41
    .line 42
    :cond_2
    invoke-virtual {v1, p1, v5}, Llcb;->a(Ljava/lang/String;Ljava/lang/String;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    invoke-virtual {v0}, Lcashier/data/AuthInfo;->b()F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const v1, 0x3c23d70a    # 0.01f

    .line 51
    .line 52
    .line 53
    cmpg-float v1, p1, v1

    .line 54
    .line 55
    if-gez v1, :cond_3

    .line 56
    .line 57
    return v2

    .line 58
    :cond_3
    invoke-virtual {v0}, Lcashier/data/AuthInfo;->d()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    sub-long/2addr v3, v5

    .line 65
    long-to-float v0, v3

    .line 66
    const-wide/32 v3, 0xea60

    .line 67
    .line 68
    .line 69
    long-to-float v1, v3

    .line 70
    mul-float p1, p1, v1

    .line 71
    .line 72
    cmpl-float p1, v0, p1

    .line 73
    .line 74
    if-lez p1, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    const/4 v2, 0x0

    .line 78
    :goto_1
    return v2
.end method

.method public final r0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 7
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcashier/model/CashierViewModel$loadAd$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcashier/model/CashierViewModel$loadAd$1;-><init>(Lcashier/model/CashierViewModel;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcashier/model/CashierViewModel$b;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcashier/model/CashierViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcashier/model/CashierViewModel;->H()Lkj;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lcashier/data/AdListReq;

    .line 29
    .line 30
    new-instance v1, Lcashier/data/AdReq;

    .line 31
    .line 32
    const-string v3, "ng_checkout_notice"

    .line 33
    .line 34
    invoke-direct {v1, v3}, Lcashier/data/AdReq;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Lcashier/data/AdListReq;-><init>(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0}, Lkj;->a(Lcashier/data/AdListReq;)Lretrofit2/Call;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v5, 0x4

    .line 49
    const/4 v6, 0x0

    .line 50
    const-string v3, "200"

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-static/range {v1 .. v6}, Lcashier/net/CashLiveCallKt;->b(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final s0(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcashier/net/ResultData<",
            "+",
            "Lcashier/data/CashierInfoRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "cashierLink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcashier/model/CashierViewModel;->e0()Lcashier/net/IPaymentApi;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcashier/model/CashierViewModel;->e:Lcashier/data/NewPaymentInfoRequest;

    .line 16
    .line 17
    invoke-interface {v1, v2}, Lcashier/net/IPaymentApi;->getPaymentInfo(Lcashier/data/NewPaymentInfoRequest;)Lretrofit2/Call;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v5, 0x2

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    move-object v2, v0

    .line 25
    move-object v4, p1

    .line 26
    invoke-static/range {v1 .. v6}, Lcashier/net/CashLiveCallKt;->b(Lretrofit2/Call;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public final u0(ZLjava/lang/String;Lcashier/net/ResultData;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcashier/net/ResultData<",
            "+",
            "Lcashier/data/OrderInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    iget-object v4, p0, Lcashier/model/CashierViewModel;->n:Lcashier/data/ConfirmPayReq;

    .line 6
    .line 7
    invoke-virtual {v4}, Lcashier/data/ConfirmPayReq;->e()Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    const-string v4, "COMMON_order_request_verify_page_show"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v4, "COMMON_order_request"

    .line 23
    .line 24
    :goto_0
    const-string v5, "is_verify"

    .line 25
    .line 26
    const-string v6, "selected_paychannel"

    .line 27
    .line 28
    const-string v7, "st"

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    if-eqz p1, :cond_5

    .line 32
    .line 33
    sget-object p1, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 34
    .line 35
    const-string v9, "1"

    .line 36
    .line 37
    invoke-static {v7, v9}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    iget-object v9, p0, Lcashier/model/CashierViewModel;->o:Lcashier/data/PaymentItem;

    .line 42
    .line 43
    if-eqz v9, :cond_1

    .line 44
    .line 45
    invoke-virtual {v9}, Lcashier/data/PaymentItem;->d()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-object v9, v8

    .line 51
    :goto_1
    invoke-static {v6, v9}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-static {v5, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-eqz p3, :cond_2

    .line 60
    .line 61
    invoke-virtual {p3}, Lcashier/net/ResultData;->a()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    move-object v5, v8

    .line 67
    :goto_2
    const-string v9, "errorcode"

    .line 68
    .line 69
    invoke-static {v9, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-eqz p3, :cond_3

    .line 74
    .line 75
    invoke-virtual {p3}, Lcashier/net/ResultData;->c()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    :cond_3
    if-nez v8, :cond_4

    .line 80
    .line 81
    const-string v8, ""

    .line 82
    .line 83
    :cond_4
    const-string p3, "errormessage"

    .line 84
    .line 85
    invoke-static {p3, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    const/4 v8, 0x5

    .line 90
    new-array v8, v8, [Lkotlin/Pair;

    .line 91
    .line 92
    aput-object v7, v8, v3

    .line 93
    .line 94
    aput-object v6, v8, v2

    .line 95
    .line 96
    aput-object p2, v8, v1

    .line 97
    .line 98
    aput-object v5, v8, v0

    .line 99
    .line 100
    const/4 p2, 0x4

    .line 101
    aput-object p3, v8, p2

    .line 102
    .line 103
    iget-object p2, p0, Lcashier/model/CashierViewModel;->d:Lcashier/data/CashierInput;

    .line 104
    .line 105
    invoke-virtual {p1, v4, v8, p2}, Lcashier/model/CashierViewModel$Companion;->a(Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    sget-object p1, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 110
    .line 111
    iget-object p3, p0, Lcashier/model/CashierViewModel;->o:Lcashier/data/PaymentItem;

    .line 112
    .line 113
    if-eqz p3, :cond_6

    .line 114
    .line 115
    invoke-virtual {p3}, Lcashier/data/PaymentItem;->d()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    :cond_6
    invoke-static {v6, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    const-string v6, "0"

    .line 124
    .line 125
    invoke-static {v7, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-static {v5, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    new-array v0, v0, [Lkotlin/Pair;

    .line 134
    .line 135
    aput-object p3, v0, v3

    .line 136
    .line 137
    aput-object v6, v0, v2

    .line 138
    .line 139
    aput-object p2, v0, v1

    .line 140
    .line 141
    iget-object p2, p0, Lcashier/model/CashierViewModel;->d:Lcashier/data/CashierInput;

    .line 142
    .line 143
    invoke-virtual {p1, v4, v0, p2}, Lcashier/model/CashierViewModel$Companion;->a(Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;)V

    .line 144
    .line 145
    .line 146
    :goto_3
    return-void
.end method

.method public final v0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcashier/model/CashierViewModel;->A:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final w0(Lcashier/data/CashierInput;)V
    .locals 1
    .param p1    # Lcashier/data/CashierInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "values"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcashier/model/CashierViewModel;->d:Lcashier/data/CashierInput;

    .line 7
    .line 8
    sput-object p1, Lcashier/model/CashierViewModel;->K:Lcashier/data/CashierInput;

    .line 9
    .line 10
    return-void
.end method

.method public final x0(Lcashier/CashierDelegate;)V
    .locals 0
    .param p1    # Lcashier/CashierDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcashier/model/CashierViewModel;->c:Lcashier/CashierDelegate;

    .line 2
    .line 3
    return-void
.end method

.method public final y0(Lcashier/data/NewPaymentInfoRequest;)V
    .locals 1
    .param p1    # Lcashier/data/NewPaymentInfoRequest;
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
    iput-object p1, p0, Lcashier/model/CashierViewModel;->e:Lcashier/data/NewPaymentInfoRequest;

    .line 7
    .line 8
    return-void
.end method

.method public final z0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcashier/model/CashierViewModel;->g:Z

    .line 2
    .line 3
    return-void
.end method
