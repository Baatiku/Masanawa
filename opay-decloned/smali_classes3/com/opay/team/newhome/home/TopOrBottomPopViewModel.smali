.class public final Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "TopOrBottomPopViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008(\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008$\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\'\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J=\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001f\u0010#\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008#\u0010$J!\u0010%\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0011H\u0003\u00a2\u0006\u0004\u0008%\u0010&J3\u0010)\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\'\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0008\u0002\u0010(\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008)\u0010*J)\u0010+\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\'\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0019\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\'\u0010/\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\u001d2\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010-H\u0003\u00a2\u0006\u0004\u0008/\u00100J\u0017\u00101\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u00081\u00102J\u0017\u00103\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u00083\u00102J\u0019\u00104\u001a\u00020\n2\u0008\u0008\u0002\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u00086\u00107J\u0017\u00108\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u00088\u00102J\u000f\u00109\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u00089\u00107J\u001f\u0010:\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008:\u0010;J\u000f\u0010<\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008<\u00107J\u000f\u0010=\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008=\u0010>J\u0017\u0010@\u001a\u00020\u000f2\u0006\u0010?\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008@\u0010AJ\u0019\u0010B\u001a\u0004\u0018\u00010\u001a2\u0006\u0010?\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008B\u0010CJ\u0015\u0010D\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008D\u0010EJ\u0015\u0010F\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008F\u0010EJ\u0015\u0010G\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008G\u0010EJ5\u0010L\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010H\u001a\u00020\u001a2\u0016\u0010K\u001a\u0012\u0012\u0004\u0012\u00020\u001a0Ij\u0008\u0012\u0004\u0012\u00020\u001a`J\u00a2\u0006\u0004\u0008L\u0010MJ7\u0010P\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010N\u001a\u00020\u00172\u0006\u0010O\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u001a\u00a2\u0006\u0004\u0008P\u0010QJ\u001f\u0010R\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008R\u0010SJ\u000f\u0010T\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008T\u00107J\u001d\u0010V\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u001a2\u0006\u0010U\u001a\u00020!\u00a2\u0006\u0004\u0008V\u0010WR\u0016\u0010Z\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0016\u0010\\\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010YR\u0016\u0010_\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u0016\u0010b\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0016\u0010d\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010^R\u0016\u0010f\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010YR\u001b\u0010\u0018\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008g\u0010h\u001a\u0004\u0008i\u0010jR\u0016\u0010N\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010YR\u0016\u0010O\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010YR\u0014\u0010o\u001a\u00020\r8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u0018\u0010r\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u001b\u0010w\u001a\u00020s8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008t\u0010h\u001a\u0004\u0008u\u0010vR\u001b\u0010|\u001a\u00020x8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008y\u0010h\u001a\u0004\u0008z\u0010{R \u0010\u0082\u0001\u001a\u0008\u0012\u0004\u0012\u00020!0}8\u0006\u00a2\u0006\u000e\n\u0004\u0008~\u0010\u007f\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001R!\u0010\u0085\u0001\u001a\u0008\u0012\u0004\u0012\u00020!0}8\u0006\u00a2\u0006\u000f\n\u0005\u0008\u0083\u0001\u0010\u007f\u001a\u0006\u0008\u0084\u0001\u0010\u0081\u0001R#\u0010\u0088\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110}8\u0006\u00a2\u0006\u000f\n\u0005\u0008\u0086\u0001\u0010\u007f\u001a\u0006\u0008\u0087\u0001\u0010\u0081\u0001R\"\u0010\u008c\u0001\u001a\t\u0012\u0005\u0012\u00030\u0089\u00010}8\u0006\u00a2\u0006\u000f\n\u0005\u0008\u008a\u0001\u0010\u007f\u001a\u0006\u0008\u008b\u0001\u0010\u0081\u0001R\"\u0010\u0090\u0001\u001a\t\u0012\u0005\u0012\u00030\u008d\u00010}8\u0006\u00a2\u0006\u000f\n\u0005\u0008\u008e\u0001\u0010\u007f\u001a\u0006\u0008\u008f\u0001\u0010\u0081\u0001R+\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001\u001a\u0006\u0008\u0093\u0001\u0010\u0094\u0001\"\u0006\u0008\u0095\u0001\u0010\u0096\u0001R,\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u0089\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0098\u0001\u0010\u0099\u0001\u001a\u0006\u0008\u009a\u0001\u0010\u009b\u0001\"\u0006\u0008\u009c\u0001\u0010\u009d\u0001R,\u0010\u00a5\u0001\u001a\u0005\u0018\u00010\u008d\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u009f\u0001\u0010\u00a0\u0001\u001a\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001\"\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R*\u0010\u00ab\u0001\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001\u001a\u0005\u0008\u00a8\u0001\u0010>\"\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R\u001c\u0010\u00ad\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110}8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00ac\u0001\u0010\u007fR\u001c\u0010\u00af\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110}8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00ae\u0001\u0010\u007fR\u001e\u0010\u00b1\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0}8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00b0\u0001\u0010\u007fR \u0010\u00b6\u0001\u001a\u00030\u00b2\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00b3\u0001\u0010h\u001a\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001R\u0019\u0010\u00b8\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00a7\u0001R \u0010\u00bd\u0001\u001a\u00030\u00b9\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00ba\u0001\u0010h\u001a\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001R \u0010\u00c2\u0001\u001a\u00030\u00be\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u00bf\u0001\u0010h\u001a\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001R\u0018\u0010\u00c6\u0001\u001a\u00030\u00c3\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001R\u0015\u0010\u00c7\u0001\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Y\u0010n\u00a8\u0006\u00c8\u0001"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "Lag8;",
        "lifecycleOwner",
        "Lcom/opay/team/newhome/home/MarketingAggregateReq;",
        "req",
        "",
        "v0",
        "(Lag8;Lcom/opay/team/newhome/home/MarketingAggregateReq;)V",
        "",
        "id",
        "",
        "type",
        "Lcom/opay/team/newhome/home/FloatingWidget;",
        "floatingWidget",
        "a0",
        "(JILcom/opay/team/newhome/home/FloatingWidget;)V",
        "Landroid/view/ViewGroup;",
        "container",
        "",
        "margin",
        "bMargin",
        "",
        "V0",
        "(Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;FFLjava/lang/String;)V",
        "Landroid/view/View;",
        "view",
        "U",
        "(Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;)V",
        "",
        "animate",
        "V",
        "(Lcom/opay/team/newhome/home/FloatingWidget;Z)V",
        "Z0",
        "(Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;)Landroid/view/View;",
        "slidingView",
        "topM",
        "X0",
        "(Landroid/view/ViewGroup;Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;F)V",
        "R0",
        "(Landroid/view/ViewGroup;Landroid/view/View;F)V",
        "Lkotlin/Function0;",
        "clickListener",
        "P0",
        "(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V",
        "F0",
        "(Landroid/view/View;)V",
        "D0",
        "G0",
        "(Z)V",
        "E0",
        "()V",
        "J0",
        "Y",
        "s0",
        "(Lag8;Lcom/opay/team/newhome/home/FloatingWidget;)V",
        "f1",
        "c0",
        "()Ljava/lang/String;",
        "uid",
        "j0",
        "(Ljava/lang/String;)I",
        "i0",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "z0",
        "(Lag8;)V",
        "u0",
        "K0",
        "sceneType",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "code",
        "x0",
        "(Lag8;Ljava/lang/String;Ljava/util/ArrayList;)V",
        "topMargin",
        "bottomMargin",
        "T0",
        "(Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;FILjava/lang/String;)V",
        "U0",
        "(Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;)V",
        "onCleared",
        "show",
        "S0",
        "(Ljava/lang/String;Z)V",
        "b",
        "F",
        "initialY",
        "c",
        "initialTouchY",
        "d",
        "Z",
        "isSwiped",
        "e",
        "I",
        "touchSlop",
        "f",
        "isShowing",
        "g",
        "dismissThreshold",
        "h",
        "Lid8;",
        "q0",
        "()I",
        "i",
        "j",
        "k",
        "J",
        "netDelayTime",
        "l",
        "Landroid/view/View;",
        "popView",
        "Ltd8;",
        "m",
        "o0",
        "()Ltd8;",
        "lifeApiService",
        "Lfv;",
        "n",
        "b0",
        "()Lfv;",
        "apiService",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "o",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "p0",
        "()Lteam/opay/pay/util/SingleLiveEvent;",
        "loadingEvent",
        "p",
        "n0",
        "homePopEndEvent",
        "q",
        "f0",
        "floatingAdEvent",
        "Lcom/opay/team/newhome/home/ForceMessageData;",
        "r",
        "g0",
        "forceMessageEvent",
        "Lteam/opay/odialog/net/AdDataItem;",
        "s",
        "r0",
        "popAdEvent",
        "t",
        "Lcom/opay/team/newhome/home/FloatingWidget;",
        "k0",
        "()Lcom/opay/team/newhome/home/FloatingWidget;",
        "L0",
        "(Lcom/opay/team/newhome/home/FloatingWidget;)V",
        "homeFloatingAdEventValue",
        "u",
        "Lcom/opay/team/newhome/home/ForceMessageData;",
        "l0",
        "()Lcom/opay/team/newhome/home/ForceMessageData;",
        "M0",
        "(Lcom/opay/team/newhome/home/ForceMessageData;)V",
        "homeForceMessageEventValue",
        "v",
        "Lteam/opay/odialog/net/AdDataItem;",
        "m0",
        "()Lteam/opay/odialog/net/AdDataItem;",
        "N0",
        "(Lteam/opay/odialog/net/AdDataItem;)V",
        "homePopAdEventValue",
        "w",
        "Ljava/lang/String;",
        "getHomePopupTranslateGuideValue",
        "O0",
        "(Ljava/lang/String;)V",
        "homePopupTranslateGuideValue",
        "x",
        "clickGetVoucherEvent",
        "y",
        "getVoucherSuccessEvent",
        "z",
        "getVoucherFailEvent",
        "Landroid/content/SharedPreferences;",
        "A",
        "h0",
        "()Landroid/content/SharedPreferences;",
        "forceMessagePreferences",
        "B",
        "pageName",
        "Ljava/text/DecimalFormat;",
        "C",
        "e0",
        "()Ljava/text/DecimalFormat;",
        "decimalFormat",
        "Ljava/text/SimpleDateFormat;",
        "D",
        "d0",
        "()Ljava/text/SimpleDateFormat;",
        "dateFormat",
        "Lkotlinx/coroutines/e;",
        "E",
        "Lkotlinx/coroutines/e;",
        "handler",
        "oneDay",
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


# instance fields
.field public final A:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public B:Ljava/lang/String;
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

.field public final E:Lkotlinx/coroutines/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final F:J

.field public b:F

.field public c:F

.field public d:Z

.field public e:I

.field public f:Z

.field public g:F

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:F

.field public j:F

.field public final k:J

.field public l:Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/home/FloatingWidget;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/home/ForceMessageData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lcom/opay/team/newhome/home/FloatingWidget;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Lcom/opay/team/newhome/home/ForceMessageData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Lteam/opay/odialog/net/AdDataItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final x:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/home/FloatingWidget;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final y:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/home/FloatingWidget;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final z:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    const v0, 0x3ea8f5c3    # 0.33f

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->g:F

    .line 13
    .line 14
    new-instance v0, Lone;

    .line 15
    .line 16
    invoke-direct {v0}, Lone;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->h:Lid8;

    .line 24
    .line 25
    const-wide/16 v0, 0x258

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->k:J

    .line 28
    .line 29
    new-instance v0, Lpne;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Lpne;-><init>(Landroid/app/Application;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->m:Lid8;

    .line 39
    .line 40
    new-instance v0, Lqne;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Lqne;-><init>(Landroid/app/Application;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->n:Lid8;

    .line 50
    .line 51
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 52
    .line 53
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->o:Lteam/opay/pay/util/SingleLiveEvent;

    .line 57
    .line 58
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 59
    .line 60
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->p:Lteam/opay/pay/util/SingleLiveEvent;

    .line 64
    .line 65
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 66
    .line 67
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->q:Lteam/opay/pay/util/SingleLiveEvent;

    .line 71
    .line 72
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 73
    .line 74
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->r:Lteam/opay/pay/util/SingleLiveEvent;

    .line 78
    .line 79
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 80
    .line 81
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->s:Lteam/opay/pay/util/SingleLiveEvent;

    .line 85
    .line 86
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 87
    .line 88
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->x:Lteam/opay/pay/util/SingleLiveEvent;

    .line 92
    .line 93
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 94
    .line 95
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->y:Lteam/opay/pay/util/SingleLiveEvent;

    .line 99
    .line 100
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 101
    .line 102
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->z:Lteam/opay/pay/util/SingleLiveEvent;

    .line 106
    .line 107
    new-instance p1, Lrne;

    .line 108
    .line 109
    invoke-direct {p1}, Lrne;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->A:Lid8;

    .line 117
    .line 118
    const-string p1, ""

    .line 119
    .line 120
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->B:Ljava/lang/String;

    .line 121
    .line 122
    new-instance p1, Lsne;

    .line 123
    .line 124
    invoke-direct {p1}, Lsne;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->C:Lid8;

    .line 132
    .line 133
    new-instance p1, Ltne;

    .line 134
    .line 135
    invoke-direct {p1}, Ltne;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->D:Lid8;

    .line 143
    .line 144
    sget-object p1, Lkotlinx/coroutines/e;->o0:Lkotlinx/coroutines/e$a;

    .line 145
    .line 146
    new-instance v0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 147
    .line 148
    invoke-direct {v0, p1, p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/e$a;Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V

    .line 149
    .line 150
    .line 151
    iput-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->E:Lkotlinx/coroutines/e;

    .line 152
    .line 153
    const-wide/32 v0, 0x5265c00

    .line 154
    .line 155
    .line 156
    iput-wide v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->F:J

    .line 157
    .line 158
    return-void
.end method

.method public static synthetic A()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->X()Ljava/text/DecimalFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final A0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lag8;Lcom/opay/team/newhome/home/FloatingWidget;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->s0(Lag8;Lcom/opay/team/newhome/home/FloatingWidget;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static synthetic B(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->a1(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final B0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lcom/opay/team/newhome/home/FloatingWidget;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->V(Lcom/opay/team/newhome/home/FloatingWidget;Z)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget v0, Lteam/opay/pay/R$string;->osdk_claimed_successfully:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "getString(...)"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/FloatingWidget;->j()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    const-string p1, ""

    .line 41
    .line 42
    :cond_0
    invoke-static {p0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method public static synthetic C(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lvyf;Lcom/opay/team/newhome/home/FloatingWidget;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->c1(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lvyf;Lcom/opay/team/newhome/home/FloatingWidget;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final C0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget v1, Lteam/opay/pay/R$string;->osdk_operation_failed:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "getString(...)"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v0, p0}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static synthetic D(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lcom/opay/team/newhome/home/FloatingWidget;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->B0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lcom/opay/team/newhome/home/FloatingWidget;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->Y0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lcom/opay/team/newhome/home/FloatingWidget;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->t0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lcom/opay/team/newhome/home/FloatingWidget;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->d1(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;Lkotlin/jvm/functions/Function0;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->Q0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;Lkotlin/jvm/functions/Function0;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic H0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->G0(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic I(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->b1(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final I0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic J(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->U(Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic K(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lcom/opay/team/newhome/home/FloatingWidget;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->V(Lcom/opay/team/newhome/home/FloatingWidget;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic L(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic M(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;JILcom/opay/team/newhome/home/FloatingWidget;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->a0(JILcom/opay/team/newhome/home/FloatingWidget;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic N(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)Ltd8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->o0()Ltd8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic O(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic P(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/ViewGroup;Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->R0(Landroid/view/ViewGroup;Landroid/view/View;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Q(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/ViewGroup;Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->X0(Landroid/view/ViewGroup;Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Q0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;Lkotlin/jvm/functions/Function0;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    if-eq v0, v2, :cond_3

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    if-eq v0, p1, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget p2, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->c:F

    .line 20
    .line 21
    sub-float/2addr p1, p2

    .line 22
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iget p4, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->e:I

    .line 27
    .line 28
    int-to-float p4, p4

    .line 29
    cmpl-float p2, p2, p4

    .line 30
    .line 31
    if-lez p2, :cond_1

    .line 32
    .line 33
    iput-boolean v2, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->d:Z

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    int-to-float p2, p2

    .line 40
    neg-float p2, p2

    .line 41
    iget p4, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->i:F

    .line 42
    .line 43
    sub-float/2addr p2, p4

    .line 44
    iget p0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->b:F

    .line 45
    .line 46
    add-float/2addr p0, p1

    .line 47
    invoke-static {p0, p2, p4}, Lkotlin/ranges/c;->h(FFF)F

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-virtual {p3, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    .line 57
    .line 58
    .line 59
    move-result p4

    .line 60
    iget v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->c:F

    .line 61
    .line 62
    sub-float/2addr p4, v0

    .line 63
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    int-to-float p3, p3

    .line 72
    iget v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->g:F

    .line 73
    .line 74
    mul-float p3, p3, v0

    .line 75
    .line 76
    cmpl-float p3, p4, p3

    .line 77
    .line 78
    if-lez p3, :cond_4

    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    invoke-static {p0, v1, v2, p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->H0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;ZILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->J0(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    iget-boolean p0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->d:Z

    .line 89
    .line 90
    if-nez p0, :cond_2

    .line 91
    .line 92
    if-eqz p2, :cond_2

    .line 93
    .line 94
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iput p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->b:F

    .line 103
    .line 104
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iput p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->c:F

    .line 109
    .line 110
    iput-boolean v1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->d:Z

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :goto_2
    return v1
.end method

.method public static final synthetic R(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->Z0(Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic S(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->f1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final T(Landroid/app/Application;)Lfv;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    const-class v1, Lfv;

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lfv;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final W()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy.MM.dd"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static synthetic W0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;FFLjava/lang/String;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    const/high16 v0, 0x41200000    # 10.0f

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Ljmf;->c(F)F

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    :cond_0
    move v4, p3

    .line 12
    and-int/lit8 p3, p6, 0x8

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    invoke-static {v0}, Ljmf;->c(F)F

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    :cond_1
    move v5, p4

    .line 21
    and-int/lit8 p3, p6, 0x10

    .line 22
    .line 23
    if-eqz p3, :cond_2

    .line 24
    .line 25
    const-string p5, ""

    .line 26
    .line 27
    :cond_2
    move-object v6, p5

    .line 28
    move-object v1, p0

    .line 29
    move-object v2, p1

    .line 30
    move-object v3, p2

    .line 31
    invoke-virtual/range {v1 .. v6}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->V0(Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;FFLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static final X()Ljava/text/DecimalFormat;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    .line 2
    .line 3
    const-string v1, "0.##"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static final Y0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->U(Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final Z()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lteam/opay/pay/envconfigapi/StorageBusiness;->SETTINGS:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 8
    .line 9
    const-string v2, "_force_message"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/envconfigapi/ConfigStorage;->g(Lteam/opay/pay/envconfigapi/StorageBusiness;Ljava/lang/String;)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static final a1(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b0()Lfv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->n:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfv;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final b1(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c1(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lvyf;Lcom/opay/team/newhome/home/FloatingWidget;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lvyf;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    const-string p3, "container3"

    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->U(Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static final d1(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final e1(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->W()Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic s()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->Z()Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic t(Landroid/app/Application;)Lfv;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->T(Landroid/app/Application;)Lfv;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final t0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lcom/opay/team/newhome/home/FloatingWidget;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->o:Lteam/opay/pay/util/SingleLiveEvent;

    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$a;->a:[I

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    aget v0, v1, v0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    const-string v2, ""

    .line 33
    .line 34
    if-eq v0, v1, :cond_3

    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    if-eq v0, p1, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->z:Lteam/opay/pay/util/SingleLiveEvent;

    .line 44
    .line 45
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move-object v2, p1

    .line 53
    :goto_0
    invoke-virtual {p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lteam/opay/pay/api/GetVouchersResult;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    invoke-virtual {v0}, Lteam/opay/pay/api/GetVouchersResult;->b()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    move-object v0, v1

    .line 72
    :goto_1
    const-string v3, "1"

    .line 73
    .line 74
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    iget-object p0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->y:Lteam/opay/pay/util/SingleLiveEvent;

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_5
    iget-object p0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->z:Lteam/opay/pay/util/SingleLiveEvent;

    .line 87
    .line 88
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lteam/opay/pay/api/GetVouchersResult;

    .line 93
    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    invoke-virtual {p1}, Lteam/opay/pay/api/GetVouchersResult;->a()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :cond_6
    if-nez v1, :cond_7

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_7
    move-object v2, v1

    .line 104
    :goto_2
    invoke-virtual {p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p0
.end method

.method public static synthetic u()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->y0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic v(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->e1(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->I0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final w0(Landroid/app/Application;)Ltd8;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    const-class v1, Ltd8;

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ltd8;

    .line 10
    .line 11
    return-object p0
.end method

.method public static synthetic x(Landroid/app/Application;)Ltd8;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->w0(Landroid/app/Application;)Ltd8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->C0(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final y0()I
    .locals 1

    .line 1
    const/high16 v0, 0x41800000    # 16.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljmf;->c(F)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    return v0
.end method

.method public static synthetic z(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lag8;Lcom/opay/team/newhome/home/FloatingWidget;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->A0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lag8;Lcom/opay/team/newhome/home/FloatingWidget;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final D0(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->j:F

    .line 8
    .line 9
    neg-float v0, v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-wide/16 v0, 0x190

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final E0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->l:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->Y()V

    .line 17
    .line 18
    .line 19
    :cond_2
    :goto_1
    return-void
.end method

.method public final F0(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->i:F

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-wide/16 v0, 0xc8

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final G0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->l:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->l:Landroid/view/View;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->l:Landroid/view/View;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->l:Landroid/view/View;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    int-to-float v0, v0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_1
    iget v1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->i:F

    .line 49
    .line 50
    add-float/2addr v0, v1

    .line 51
    neg-float v0, v0

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    const-wide/16 v0, 0xc8

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    new-instance v0, Lune;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lune;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->Y()V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_2
    return-void
.end method

.method public final J0(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->i:F

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-wide/16 v0, 0x64

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final K0(Lag8;)V
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
    const-string v0, "Rewards_Act_Pop"

    .line 7
    .line 8
    filled-new-array {v0}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "Reward"

    .line 17
    .line 18
    invoke-virtual {p0, p1, v1, v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->x0(Lag8;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final L0(Lcom/opay/team/newhome/home/FloatingWidget;)V
    .locals 0
    .param p1    # Lcom/opay/team/newhome/home/FloatingWidget;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->t:Lcom/opay/team/newhome/home/FloatingWidget;

    .line 2
    .line 3
    return-void
.end method

.method public final M0(Lcom/opay/team/newhome/home/ForceMessageData;)V
    .locals 0
    .param p1    # Lcom/opay/team/newhome/home/ForceMessageData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->u:Lcom/opay/team/newhome/home/ForceMessageData;

    .line 2
    .line 3
    return-void
.end method

.method public final N0(Lteam/opay/odialog/net/AdDataItem;)V
    .locals 0
    .param p1    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->v:Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    return-void
.end method

.method public final O0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final P0(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Llne;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Llne;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final R0(Landroid/view/ViewGroup;Landroid/view/View;F)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->l:Landroid/view/View;

    .line 5
    .line 6
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 11
    .line 12
    .line 13
    iput p3, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->j:F

    .line 14
    .line 15
    instance-of p3, p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    const/4 v0, -0x2

    .line 18
    const/4 v1, -0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    new-instance p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    .line 24
    invoke-direct {p3, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->q0()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->q0()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {p2, p3, v2, v0, v2}, Lteam/opay/core/android/ViewKt;->r(Landroid/view/View;IIII)V

    .line 39
    .line 40
    .line 41
    new-instance p3, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 42
    .line 43
    invoke-direct {p3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 44
    .line 45
    .line 46
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    .line 48
    invoke-virtual {p3, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v2, 0x4

    .line 60
    invoke-virtual {p3, v0, v2, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->t(IIII)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    instance-of p3, p1, Landroid/widget/FrameLayout;

    .line 68
    .line 69
    if-eqz p3, :cond_2

    .line 70
    .line 71
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 72
    .line 73
    invoke-direct {p3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->q0()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->q0()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {p3, v0, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 85
    .line 86
    .line 87
    const/16 v0, 0x50

    .line 88
    .line 89
    iput v0, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 90
    .line 91
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_0
    const/high16 p1, 0x42c80000    # 100.0f

    .line 95
    .line 96
    invoke-static {p1}, Ljmf;->c(F)F

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->D0(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->f:Z

    .line 108
    .line 109
    return-void
.end method

.method public final S0(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->l:Landroid/view/View;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "showHideView--popView="

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, "this="

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->l:Landroid/view/View;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 v1, 0x0

    .line 48
    if-nez p1, :cond_0

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    :goto_0
    if-eq p1, p2, :cond_2

    .line 54
    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/16 v1, 0x8

    .line 59
    .line 60
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public final T0(Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;FILjava/lang/String;)V
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/home/FloatingWidget;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "type"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "showHomePop--this="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    int-to-float p4, p4

    .line 28
    const/high16 v0, 0x42840000    # 66.0f

    .line 29
    .line 30
    invoke-static {v0}, Ljmf;->c(F)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-float v5, p4, v0

    .line 35
    .line 36
    move-object v1, p0

    .line 37
    move-object v2, p1

    .line 38
    move-object v3, p2

    .line 39
    move v4, p3

    .line 40
    move-object v6, p5

    .line 41
    invoke-virtual/range {v1 .. v6}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->V0(Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;FFLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final U(Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/FloatingWidget;->n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/FloatingWidget;->r()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->x:Lteam/opay/pay/util/SingleLiveEvent;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/FloatingWidget;->n()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/FloatingWidget;->r()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget v2, Lteam/opay/pay/R$string;->osdk_voucher_activated:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "getString(...)"

    .line 47
    .line 48
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/FloatingWidget;->h()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    const/4 v2, 0x2

    .line 59
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->a0(JILcom/opay/team/newhome/home/FloatingWidget;)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p2, v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->V(Lcom/opay/team/newhome/home/FloatingWidget;Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v0, "getContext(...)"

    .line 71
    .line 72
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/FloatingWidget;->j()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    if-nez p2, :cond_2

    .line 80
    .line 81
    const-string p2, ""

    .line 82
    .line 83
    :cond_2
    invoke-static {p1, p2}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
.end method

.method public final U0(Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;)V
    .locals 9
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/home/FloatingWidget;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/FloatingWidget;->s()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/FloatingWidget;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const/16 v7, 0x1c

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    move-object v1, p0

    .line 29
    move-object v2, p1

    .line 30
    move-object v3, p2

    .line 31
    invoke-static/range {v1 .. v8}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->W0(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;FFLjava/lang/String;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final V(Lcom/opay/team/newhome/home/FloatingWidget;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/FloatingWidget;->a()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->E0()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->G0(Z)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final V0(Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;FFLjava/lang/String;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/FloatingWidget;->s()Z

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 6
    .line 7
    .line 8
    move-result-object v9

    .line 9
    move-object v12, p0

    .line 10
    iget-object v10, v12, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->E:Lkotlinx/coroutines/e;

    .line 11
    .line 12
    new-instance v11, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$showPopTrue$1;

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    move-object v0, v11

    .line 16
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    move-object v3, p2

    .line 19
    move-object/from16 v4, p5

    .line 20
    .line 21
    move/from16 v6, p3

    .line 22
    .line 23
    move/from16 v7, p4

    .line 24
    .line 25
    invoke-direct/range {v0 .. v8}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$showPopTrue$1;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;Ljava/lang/String;ZFFLjr2;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    const/4 v1, 0x0

    .line 30
    move-object v6, v9

    .line 31
    move-object v7, v10

    .line 32
    move-object v9, v11

    .line 33
    move v10, v0

    .line 34
    move-object v11, v1

    .line 35
    invoke-static/range {v6 .. v11}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final X0(Landroid/view/ViewGroup;Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;F)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->e:I

    .line 17
    .line 18
    iput-object p2, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->l:Landroid/view/View;

    .line 19
    .line 20
    iput p4, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->i:F

    .line 21
    .line 22
    new-instance p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    const/4 v1, -0x2

    .line 26
    invoke-direct {p4, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->q0()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->q0()I

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-static {p2, p1, v0, p4, v0}, Lteam/opay/core/android/ViewKt;->r(Landroid/view/View;IIII)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Ljne;

    .line 45
    .line 46
    invoke-direct {p1, p0, p2, p3}, Ljne;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2, p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->P0(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 50
    .line 51
    .line 52
    const/high16 p1, 0x42c80000    # 100.0f

    .line 53
    .line 54
    invoke-static {p1}, Ljmf;->c(F)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    neg-float p1, p1

    .line 59
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->F0(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->f:Z

    .line 67
    .line 68
    return-void
.end method

.method public final Y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->l:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast v1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v1, v3

    .line 18
    :goto_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iput-object v3, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->l:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "dismiss--it.parent="

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, "----currentThread="

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->f:Z

    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public final Z0(Landroid/view/ViewGroup;Lcom/opay/team/newhome/home/FloatingWidget;)Landroid/view/View;
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->n()I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    const-string v5, ""

    .line 11
    .line 12
    const-string v6, "ivClose"

    .line 13
    .line 14
    const-string v7, "inflate(...)"

    .line 15
    .line 16
    const/16 v8, 0x8

    .line 17
    .line 18
    if-eq v4, v3, :cond_1c

    .line 19
    .line 20
    if-eq v4, v1, :cond_19

    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    const-string v9, "%"

    .line 24
    .line 25
    const-string v10, "tvDiscountDesc"

    .line 26
    .line 27
    const-string v11, "tvDiscount"

    .line 28
    .line 29
    const-string v12, "tvMoney"

    .line 30
    .line 31
    const/16 v13, 0x3e8

    .line 32
    .line 33
    if-eq v4, v5, :cond_e

    .line 34
    .line 35
    const/4 v5, 0x4

    .line 36
    if-eq v4, v5, :cond_0

    .line 37
    .line 38
    const/4 v14, 0x0

    .line 39
    goto/16 :goto_12

    .line 40
    .line 41
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->g()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    int-to-long v14, v13

    .line 46
    mul-long v4, v4, v14

    .line 47
    .line 48
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->l()J

    .line 49
    .line 50
    .line 51
    move-result-wide v17

    .line 52
    mul-long v17, v17, v14

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v13

    .line 58
    cmp-long v15, v13, v17

    .line 59
    .line 60
    if-ltz v15, :cond_1

    .line 61
    .line 62
    cmp-long v15, v13, v4

    .line 63
    .line 64
    if-lez v15, :cond_2

    .line 65
    .line 66
    :cond_1
    const/4 v1, 0x0

    .line 67
    goto/16 :goto_7

    .line 68
    .line 69
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    invoke-static {v13}, Lwyf;->inflate(Landroid/view/LayoutInflater;)Lwyf;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->f()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-ne v7, v3, :cond_3

    .line 89
    .line 90
    const/4 v7, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    const/4 v7, 0x0

    .line 93
    :goto_0
    iget-object v14, v13, Lwyf;->i:Landroid/widget/TextView;

    .line 94
    .line 95
    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    if-nez v7, :cond_4

    .line 99
    .line 100
    const/4 v12, 0x0

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const/16 v12, 0x8

    .line 103
    .line 104
    :goto_1
    invoke-virtual {v14, v12}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v12, v13, Lwyf;->e:Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    if-eqz v7, :cond_5

    .line 113
    .line 114
    const/4 v11, 0x0

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    const/16 v11, 0x8

    .line 117
    .line 118
    :goto_2
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    iget-object v11, v13, Lwyf;->f:Landroid/widget/TextView;

    .line 122
    .line 123
    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    if-eqz v7, :cond_6

    .line 127
    .line 128
    const/4 v10, 0x0

    .line 129
    goto :goto_3

    .line 130
    :cond_6
    const/16 v10, 0x8

    .line 131
    .line 132
    :goto_3
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    if-eqz v7, :cond_9

    .line 136
    .line 137
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->e()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    if-eqz v7, :cond_7

    .line 142
    .line 143
    invoke-static {v7}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    if-nez v7, :cond_8

    .line 148
    .line 149
    :cond_7
    sget-object v7, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 150
    .line 151
    :cond_8
    iget-object v10, v13, Lwyf;->e:Landroid/widget/TextView;

    .line 152
    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->e0()Ljava/text/DecimalFormat;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    invoke-virtual {v11, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    new-instance v11, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_9
    iget-object v7, v13, Lwyf;->i:Landroid/widget/TextView;

    .line 181
    .line 182
    sget-object v9, Lteam/opay/core/api/Currency;->NIGERIA:Lteam/opay/core/api/Currency;

    .line 183
    .line 184
    invoke-virtual {v9}, Lteam/opay/core/api/Currency;->getSymbol()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->e0()Ljava/text/DecimalFormat;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->b()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    if-eqz v11, :cond_a

    .line 197
    .line 198
    invoke-static {v11}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    if-nez v11, :cond_b

    .line 203
    .line 204
    :cond_a
    sget-object v11, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 205
    .line 206
    :cond_b
    invoke-virtual {v10, v11}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    new-instance v11, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    :goto_4
    iget-object v7, v13, Lwyf;->j:Landroid/widget/TextView;

    .line 229
    .line 230
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->m()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 238
    .line 239
    .line 240
    move-result-wide v9

    .line 241
    sub-long v9, v4, v9

    .line 242
    .line 243
    iget-wide v11, v0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->F:J

    .line 244
    .line 245
    cmp-long v7, v9, v11

    .line 246
    .line 247
    if-lez v7, :cond_c

    .line 248
    .line 249
    long-to-float v4, v9

    .line 250
    long-to-float v5, v11

    .line 251
    div-float/2addr v4, v5

    .line 252
    float-to-double v4, v4

    .line 253
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 254
    .line 255
    .line 256
    move-result-wide v4

    .line 257
    double-to-float v4, v4

    .line 258
    float-to-int v4, v4

    .line 259
    iget-object v5, v13, Lwyf;->g:Landroid/widget/TextView;

    .line 260
    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    sget v9, Lteam/opay/pay/R$string;->osdk_expire_three_day:I

    .line 266
    .line 267
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    new-array v1, v1, [Ljava/lang/Object;

    .line 272
    .line 273
    aput-object v4, v1, v2

    .line 274
    .line 275
    const-string v4, "s"

    .line 276
    .line 277
    aput-object v4, v1, v3

    .line 278
    .line 279
    invoke-virtual {v7, v9, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_c
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 288
    .line 289
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    iget-object v3, v13, Lwyf;->g:Landroid/widget/TextView;

    .line 293
    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    sget v9, Lteam/opay/pay/R$string;->osdk_expires_in:I

    .line 299
    .line 300
    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .line 306
    .line 307
    sget-object v3, Li56;->a:Li56;

    .line 308
    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    const-string v9, "getContext(...)"

    .line 314
    .line 315
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 319
    .line 320
    .line 321
    move-result-wide v9

    .line 322
    sub-long/2addr v4, v9

    .line 323
    invoke-virtual {v3, v7, v1, v4, v5}, Li56;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;J)V

    .line 324
    .line 325
    .line 326
    iget-object v3, v13, Lwyf;->h:Landroid/widget/TextView;

    .line 327
    .line 328
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    .line 330
    .line 331
    :goto_5
    iget-object v1, v13, Lwyf;->b:Lcom/google/android/material/button/MaterialButton;

    .line 332
    .line 333
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->c()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    iget-object v1, v13, Lwyf;->d:Landroid/widget/ImageView;

    .line 341
    .line 342
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->a()Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-eqz v3, :cond_d

    .line 350
    .line 351
    goto :goto_6

    .line 352
    :cond_d
    const/16 v2, 0x8

    .line 353
    .line 354
    :goto_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 355
    .line 356
    .line 357
    iget-object v1, v13, Lwyf;->d:Landroid/widget/ImageView;

    .line 358
    .line 359
    new-instance v2, Line;

    .line 360
    .line 361
    invoke-direct {v2, v0}, Line;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v13}, Lwyf;->a()Landroidx/cardview/widget/CardView;

    .line 368
    .line 369
    .line 370
    move-result-object v14

    .line 371
    goto/16 :goto_12

    .line 372
    .line 373
    :goto_7
    return-object v1

    .line 374
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-static {v1}, Lvyf;->inflate(Landroid/view/LayoutInflater;)Lvyf;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->f()I

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    if-ne v4, v3, :cond_f

    .line 394
    .line 395
    goto :goto_8

    .line 396
    :cond_f
    const/4 v3, 0x0

    .line 397
    :goto_8
    iget-object v4, v1, Lvyf;->h:Landroid/widget/TextView;

    .line 398
    .line 399
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    if-nez v3, :cond_10

    .line 403
    .line 404
    const/4 v5, 0x0

    .line 405
    goto :goto_9

    .line 406
    :cond_10
    const/16 v5, 0x8

    .line 407
    .line 408
    :goto_9
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 409
    .line 410
    .line 411
    iget-object v4, v1, Lvyf;->f:Landroid/widget/TextView;

    .line 412
    .line 413
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    if-eqz v3, :cond_11

    .line 417
    .line 418
    const/4 v5, 0x0

    .line 419
    goto :goto_a

    .line 420
    :cond_11
    const/16 v5, 0x8

    .line 421
    .line 422
    :goto_a
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 423
    .line 424
    .line 425
    iget-object v4, v1, Lvyf;->g:Landroid/widget/TextView;

    .line 426
    .line 427
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    if-eqz v3, :cond_12

    .line 431
    .line 432
    const/4 v5, 0x0

    .line 433
    goto :goto_b

    .line 434
    :cond_12
    const/16 v5, 0x8

    .line 435
    .line 436
    :goto_b
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 437
    .line 438
    .line 439
    if-eqz v3, :cond_15

    .line 440
    .line 441
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->e()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    if-eqz v3, :cond_13

    .line 446
    .line 447
    invoke-static {v3}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    if-nez v3, :cond_14

    .line 452
    .line 453
    :cond_13
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 454
    .line 455
    :cond_14
    iget-object v4, v1, Lvyf;->f:Landroid/widget/TextView;

    .line 456
    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->e0()Ljava/text/DecimalFormat;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    invoke-virtual {v5, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    .line 482
    .line 483
    goto :goto_c

    .line 484
    :cond_15
    iget-object v3, v1, Lvyf;->h:Landroid/widget/TextView;

    .line 485
    .line 486
    sget-object v4, Lteam/opay/core/api/Currency;->NIGERIA:Lteam/opay/core/api/Currency;

    .line 487
    .line 488
    invoke-virtual {v4}, Lteam/opay/core/api/Currency;->getSymbol()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->e0()Ljava/text/DecimalFormat;

    .line 493
    .line 494
    .line 495
    move-result-object v5

    .line 496
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->b()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v7

    .line 500
    if-eqz v7, :cond_16

    .line 501
    .line 502
    invoke-static {v7}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 503
    .line 504
    .line 505
    move-result-object v7

    .line 506
    if-nez v7, :cond_17

    .line 507
    .line 508
    :cond_16
    sget-object v7, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 509
    .line 510
    :cond_17
    invoke-virtual {v5, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    new-instance v7, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    .line 531
    .line 532
    :goto_c
    iget-object v3, v1, Lvyf;->b:Lcom/google/android/material/button/MaterialButton;

    .line 533
    .line 534
    new-instance v4, Lgne;

    .line 535
    .line 536
    move-object/from16 v9, p2

    .line 537
    .line 538
    invoke-direct {v4, v0, v1, v9}, Lgne;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lvyf;Lcom/opay/team/newhome/home/FloatingWidget;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    .line 543
    .line 544
    iget-object v3, v1, Lvyf;->i:Landroid/widget/TextView;

    .line 545
    .line 546
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->m()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    invoke-static {v4}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    .line 556
    .line 557
    iget-object v3, v1, Lvyf;->e:Landroid/widget/TextView;

    .line 558
    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->d0()Ljava/text/SimpleDateFormat;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->l()J

    .line 564
    .line 565
    .line 566
    move-result-wide v10

    .line 567
    int-to-long v12, v13

    .line 568
    mul-long v10, v10, v12

    .line 569
    .line 570
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 571
    .line 572
    .line 573
    move-result-object v5

    .line 574
    invoke-virtual {v4, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->d0()Ljava/text/SimpleDateFormat;

    .line 579
    .line 580
    .line 581
    move-result-object v5

    .line 582
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->g()J

    .line 583
    .line 584
    .line 585
    move-result-wide v10

    .line 586
    mul-long v10, v10, v12

    .line 587
    .line 588
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 589
    .line 590
    .line 591
    move-result-object v7

    .line 592
    invoke-virtual {v5, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v5

    .line 596
    new-instance v7, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    const-string v4, " - "

    .line 605
    .line 606
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v4

    .line 616
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    .line 618
    .line 619
    iget-object v3, v1, Lvyf;->b:Lcom/google/android/material/button/MaterialButton;

    .line 620
    .line 621
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->c()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    .line 627
    .line 628
    iget-object v3, v1, Lvyf;->d:Landroid/widget/ImageView;

    .line 629
    .line 630
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->a()Z

    .line 634
    .line 635
    .line 636
    move-result v4

    .line 637
    if-eqz v4, :cond_18

    .line 638
    .line 639
    goto :goto_d

    .line 640
    :cond_18
    const/16 v2, 0x8

    .line 641
    .line 642
    :goto_d
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 643
    .line 644
    .line 645
    iget-object v2, v1, Lvyf;->d:Landroid/widget/ImageView;

    .line 646
    .line 647
    new-instance v3, Lhne;

    .line 648
    .line 649
    invoke-direct {v3, v0}, Lhne;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v1}, Lvyf;->a()Landroidx/cardview/widget/CardView;

    .line 656
    .line 657
    .line 658
    move-result-object v14

    .line 659
    goto/16 :goto_12

    .line 660
    .line 661
    :cond_19
    move-object/from16 v9, p2

    .line 662
    .line 663
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    invoke-static {v1}, Luyf;->inflate(Landroid/view/LayoutInflater;)Luyf;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    iget-object v10, v1, Luyf;->c:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 679
    .line 680
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->i()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v3

    .line 684
    if-nez v3, :cond_1a

    .line 685
    .line 686
    move-object v11, v5

    .line 687
    goto :goto_e

    .line 688
    :cond_1a
    move-object v11, v3

    .line 689
    :goto_e
    sget v12, Lteam/opay/pay/R$mipmap;->bg_banner_default:I

    .line 690
    .line 691
    const/16 v17, 0x2c

    .line 692
    .line 693
    const/16 v18, 0x0

    .line 694
    .line 695
    const/4 v13, 0x0

    .line 696
    const/4 v14, 0x0

    .line 697
    const/4 v15, 0x1

    .line 698
    const/16 v16, 0x0

    .line 699
    .line 700
    invoke-static/range {v10 .. v18}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 701
    .line 702
    .line 703
    iget-object v3, v1, Luyf;->b:Landroid/widget/ImageView;

    .line 704
    .line 705
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->a()Z

    .line 709
    .line 710
    .line 711
    move-result v4

    .line 712
    if-eqz v4, :cond_1b

    .line 713
    .line 714
    goto :goto_f

    .line 715
    :cond_1b
    const/16 v2, 0x8

    .line 716
    .line 717
    :goto_f
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 718
    .line 719
    .line 720
    iget-object v2, v1, Luyf;->b:Landroid/widget/ImageView;

    .line 721
    .line 722
    new-instance v3, Lfne;

    .line 723
    .line 724
    invoke-direct {v3, v0}, Lfne;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v1}, Luyf;->a()Landroidx/cardview/widget/CardView;

    .line 731
    .line 732
    .line 733
    move-result-object v14

    .line 734
    goto :goto_12

    .line 735
    :cond_1c
    move-object/from16 v9, p2

    .line 736
    .line 737
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    invoke-static {v1}, Ltyf;->inflate(Landroid/view/LayoutInflater;)Ltyf;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    iget-object v10, v1, Ltyf;->d:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 753
    .line 754
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->i()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v3

    .line 758
    if-nez v3, :cond_1d

    .line 759
    .line 760
    move-object v11, v5

    .line 761
    goto :goto_10

    .line 762
    :cond_1d
    move-object v11, v3

    .line 763
    :goto_10
    sget v12, Lteam/opay/pay/R$mipmap;->osdk_logo_place_holder:I

    .line 764
    .line 765
    const/16 v17, 0x2c

    .line 766
    .line 767
    const/16 v18, 0x0

    .line 768
    .line 769
    const/4 v13, 0x0

    .line 770
    const/4 v14, 0x0

    .line 771
    const/4 v15, 0x1

    .line 772
    const/16 v16, 0x0

    .line 773
    .line 774
    invoke-static/range {v10 .. v18}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 775
    .line 776
    .line 777
    iget-object v3, v1, Ltyf;->f:Landroid/widget/TextView;

    .line 778
    .line 779
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->m()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v4

    .line 783
    invoke-static {v4}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 784
    .line 785
    .line 786
    move-result-object v4

    .line 787
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    .line 789
    .line 790
    iget-object v3, v1, Ltyf;->e:Landroid/widget/TextView;

    .line 791
    .line 792
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->d()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v4

    .line 796
    invoke-static {v4}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 797
    .line 798
    .line 799
    move-result-object v4

    .line 800
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    .line 802
    .line 803
    iget-object v3, v1, Ltyf;->b:Lcom/google/android/material/button/MaterialButton;

    .line 804
    .line 805
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->c()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v4

    .line 809
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    .line 811
    .line 812
    iget-object v3, v1, Ltyf;->c:Landroid/widget/ImageView;

    .line 813
    .line 814
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    invoke-virtual/range {p2 .. p2}, Lcom/opay/team/newhome/home/FloatingWidget;->a()Z

    .line 818
    .line 819
    .line 820
    move-result v4

    .line 821
    if-eqz v4, :cond_1e

    .line 822
    .line 823
    goto :goto_11

    .line 824
    :cond_1e
    const/16 v2, 0x8

    .line 825
    .line 826
    :goto_11
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 827
    .line 828
    .line 829
    iget-object v2, v1, Ltyf;->c:Landroid/widget/ImageView;

    .line 830
    .line 831
    new-instance v3, Lene;

    .line 832
    .line 833
    invoke-direct {v3, v0}, Lene;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V

    .line 834
    .line 835
    .line 836
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v1}, Ltyf;->a()Landroidx/cardview/widget/CardView;

    .line 840
    .line 841
    .line 842
    move-result-object v14

    .line 843
    :goto_12
    return-object v14
.end method

.method public final a0(JILcom/opay/team/newhome/home/FloatingWidget;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/opay/team/newhome/home/FrequencyInfoReportReq;

    .line 2
    .line 3
    const/4 v5, 0x4

    .line 4
    const/4 v6, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    move-object v0, v7

    .line 7
    move-wide v1, p1

    .line 8
    move v3, p3

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/opay/team/newhome/home/FrequencyInfoReportReq;-><init>(JILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lteam/opay/core/android/arch/RequestBuilder;

    .line 13
    .line 14
    invoke-direct {p1}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->b0()Lfv;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p2, v7}, Lfv;->X(Lcom/opay/team/newhome/home/FrequencyInfoReportReq;)Lretrofit2/Call;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4}, Lcom/opay/team/newhome/home/FloatingWidget;->s()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 p2, 0x1

    .line 41
    if-ne p3, p2, :cond_1

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    const-string p1, "top_marketing_popup_show"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string p1, "bottom_marketing_popup_show"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    if-eqz p1, :cond_2

    .line 52
    .line 53
    const-string p1, "top_marketing_popup_click"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string p1, "bottom_marketing_popup_click"

    .line 57
    .line 58
    :goto_0
    sget-object p3, Lx7b;->a:Lx7b;

    .line 59
    .line 60
    invoke-virtual {p4}, Lcom/opay/team/newhome/home/FloatingWidget;->h()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "task_id"

    .line 69
    .line 70
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p4}, Lcom/opay/team/newhome/home/FloatingWidget;->n()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "template_id"

    .line 83
    .line 84
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, "page_name"

    .line 89
    .line 90
    iget-object v3, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->B:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const-string v3, "voucher_id"

    .line 97
    .line 98
    invoke-virtual {p4}, Lcom/opay/team/newhome/home/FloatingWidget;->q()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {p4}, Lcom/opay/team/newhome/home/FloatingWidget;->o()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    const-string v5, ""

    .line 111
    .line 112
    if-nez v4, :cond_3

    .line 113
    .line 114
    move-object v4, v5

    .line 115
    :cond_3
    const-string v6, "ab_parameter"

    .line 116
    .line 117
    invoke-static {v6, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {p4}, Lcom/opay/team/newhome/home/FloatingWidget;->p()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    if-nez p4, :cond_4

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    move-object v5, p4

    .line 129
    :goto_1
    const-string p4, "ab_id"

    .line 130
    .line 131
    invoke-static {p4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    const/4 v5, 0x6

    .line 136
    new-array v5, v5, [Lkotlin/Pair;

    .line 137
    .line 138
    const/4 v6, 0x0

    .line 139
    aput-object v0, v5, v6

    .line 140
    .line 141
    aput-object v1, v5, p2

    .line 142
    .line 143
    const/4 p2, 0x2

    .line 144
    aput-object v2, v5, p2

    .line 145
    .line 146
    const/4 p2, 0x3

    .line 147
    aput-object v3, v5, p2

    .line 148
    .line 149
    const/4 p2, 0x4

    .line 150
    aput-object v4, v5, p2

    .line 151
    .line 152
    const/4 p2, 0x5

    .line 153
    aput-object p4, v5, p2

    .line 154
    .line 155
    invoke-virtual {p3, p1, v5}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final c0()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/Date;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "format(...)"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final d0()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->D:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e0()Ljava/text/DecimalFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->C:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/DecimalFormat;

    .line 8
    .line 9
    return-object v0
.end method

.method public final f0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/home/FloatingWidget;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->q:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f1()V
    .locals 6

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
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->j0(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->h0()Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v4, "message_key_force_show_number_day"

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v3, Lorg/json/JSONObject;

    .line 41
    .line 42
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v4, "param_day_of_times"

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->c0()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    const-string v4, "param_show_times"

    .line 57
    .line 58
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final g0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lcom/opay/team/newhome/home/ForceMessageData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->r:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h0()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->A:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/SharedPreferences;

    .line 8
    .line 9
    return-object v0
.end method

.method public final i0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->h0()Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "message_key_force_show_number_day"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v1, Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "param_day_of_times"

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->c0()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    const-string v2, "param_show_times"

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method public final j0(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->i0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "param_day_of_times"

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->c0()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const-string p1, "param_show_times"

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    :cond_1
    return v0
.end method

.method public final k0()Lcom/opay/team/newhome/home/FloatingWidget;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->t:Lcom/opay/team/newhome/home/FloatingWidget;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l0()Lcom/opay/team/newhome/home/ForceMessageData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->u:Lcom/opay/team/newhome/home/ForceMessageData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m0()Lteam/opay/odialog/net/AdDataItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->v:Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->p:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o0()Ltd8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ltd8;

    .line 8
    .line 9
    return-object v0
.end method

.method public onCleared()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->Y()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final p0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->o:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final r0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->s:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s0(Lag8;Lcom/opay/team/newhome/home/FloatingWidget;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/FloatingWidget;->h()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->a0(JILcom/opay/team/newhome/home/FloatingWidget;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lteam/opay/pay/api/GetVouchersBody;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/FloatingWidget;->q()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    :cond_0
    move-object v8, v1

    .line 20
    const/16 v10, 0x20

    .line 21
    .line 22
    const/4 v11, 0x0

    .line 23
    const-string v4, "6"

    .line 24
    .line 25
    const-string v5, "9999995"

    .line 26
    .line 27
    const-string v6, "2"

    .line 28
    .line 29
    const-string v7, "11"

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    move-object v3, v0

    .line 33
    invoke-direct/range {v3 .. v11}, Lteam/opay/pay/api/GetVouchersBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lteam/opay/core/android/arch/RequestBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->b0()Lfv;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v2, v0}, Lfv;->t(Lteam/opay/pay/api/GetVouchersBody;)Lretrofit2/Call;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v1, v0}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Lkne;

    .line 62
    .line 63
    invoke-direct {v1, p0, p2}, Lkne;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lcom/opay/team/newhome/home/FloatingWidget;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final u0(Lag8;)V
    .locals 4
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
    sget-object v0, Lteam/opay/pay/message/delegate/ForceMessageConfig;->Companion:Lteam/opay/pay/message/delegate/ForceMessageConfig$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/pay/message/delegate/ForceMessageConfig$Companion;->a()Lteam/opay/pay/message/delegate/ForceMessageConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/message/delegate/ForceMessageConfig;->getNumPerData()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    sget-object v2, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 22
    .line 23
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0, v2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->j0(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ltz v2, :cond_1

    .line 36
    .line 37
    if-ge v2, v0, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_1
    new-instance v0, Lcom/opay/team/newhome/home/MarketingAggregateReq;

    .line 41
    .line 42
    const-string v2, "interstitial_ad"

    .line 43
    .line 44
    filled-new-array {v2}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "Home"

    .line 53
    .line 54
    invoke-direct {v0, v1, v3, v2}, Lcom/opay/team/newhome/home/MarketingAggregateReq;-><init>(ZLjava/lang/String;Ljava/util/ArrayList;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->v0(Lag8;Lcom/opay/team/newhome/home/MarketingAggregateReq;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final v0(Lag8;Lcom/opay/team/newhome/home/MarketingAggregateReq;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/opay/team/newhome/home/MarketingAggregateReq;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->B:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v4, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {v4, p0, p2, p1, v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$homePopTrue$1;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lcom/opay/team/newhome/home/MarketingAggregateReq;Lag8;Ljr2;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final x0(Lag8;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
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
    const-string v0, "sceneType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "code"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->B:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    move-object v2, v0

    .line 26
    move-object v3, p0

    .line 27
    move-object v4, p2

    .line 28
    move-object v5, p3

    .line 29
    move-object v6, p1

    .line 30
    invoke-direct/range {v2 .. v7}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Ljava/lang/String;Ljava/util/ArrayList;Lag8;Ljr2;)V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    move-object v4, v0

    .line 38
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final z0(Lag8;)V
    .locals 3
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
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->x:Lteam/opay/pay/util/SingleLiveEvent;

    .line 7
    .line 8
    new-instance v1, Ldne;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Ldne;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lag8;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$b;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->y:Lteam/opay/pay/util/SingleLiveEvent;

    .line 22
    .line 23
    new-instance v1, Lmne;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lmne;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$b;

    .line 29
    .line 30
    invoke-direct {v2, v1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->z:Lteam/opay/pay/util/SingleLiveEvent;

    .line 37
    .line 38
    new-instance v1, Lnne;

    .line 39
    .line 40
    invoke-direct {v1}, Lnne;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$b;

    .line 44
    .line 45
    invoke-direct {v2, v1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
