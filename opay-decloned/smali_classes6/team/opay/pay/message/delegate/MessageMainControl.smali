.class public final Lteam/opay/pay/message/delegate/MessageMainControl;
.super Ljava/lang/Object;
.source "MessageMainControl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/message/delegate/MessageMainControl$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J+\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00042\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nH\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J#\u0010\u0013\u001a\u00020\u000c2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J)\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\u0010\u0010\u0018\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0017\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J+\u0010#\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\"0!2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008#\u0010$JE\u0010)\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001c2\u0008\u0010\'\u001a\u0004\u0018\u00010\u001e2\u001a\u0010(\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\"0!H\u0002\u00a2\u0006\u0004\u0008)\u0010*JM\u0010,\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020\u001e2\u0008\u0010\'\u001a\u0004\u0018\u00010\u001e2\u001a\u0010(\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\"0!H\u0002\u00a2\u0006\u0004\u0008,\u0010-JE\u0010/\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001c2\u0008\u0010.\u001a\u0004\u0018\u00010\u001e2\u001a\u0010(\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\"0!H\u0002\u00a2\u0006\u0004\u0008/\u0010*R\u001b\u00105\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104R\u001d\u0010:\u001a\u0004\u0018\u0001068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u00102\u001a\u0004\u00088\u00109\u00a8\u0006;"
    }
    d2 = {
        "Lteam/opay/pay/message/delegate/MessageMainControl;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "ctx",
        "Lteam/opay/pay/message/bean/TokenRequestV2;",
        "G",
        "(Landroid/content/Context;)Lteam/opay/pay/message/bean/TokenRequestV2;",
        "context",
        "Lkotlin/Function1;",
        "",
        "",
        "successCallback",
        "q",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V",
        "H",
        "(Landroid/content/Context;)V",
        "data",
        "D",
        "(Ljava/lang/String;Landroid/content/Context;)V",
        "tempUUID",
        "Lteam/opay/pay/message/net/ResultData;",
        "Lteam/opay/pay/message/bean/TokenResponse;",
        "tokenRsp",
        "",
        "m",
        "(Ljava/lang/String;Lteam/opay/pay/message/net/ResultData;)Z",
        "Lteam/opay/pay/message/bean/NoticeItemData;",
        "noticeItem",
        "Lorg/json/JSONObject;",
        "r",
        "(Lteam/opay/pay/message/bean/NoticeItemData;)Lorg/json/JSONObject;",
        "",
        "Lkotlin/Pair;",
        "s",
        "(Lteam/opay/pay/message/bean/NoticeItemData;)[Lkotlin/Pair;",
        "Landroid/app/Activity;",
        "item",
        "taskJson",
        "virtualParam",
        "E",
        "(Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V",
        "couponJson",
        "v",
        "(Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;Lorg/json/JSONObject;[Lkotlin/Pair;)V",
        "json",
        "t",
        "Lcom/google/gson/Gson;",
        "b",
        "Lid8;",
        "o",
        "()Lcom/google/gson/Gson;",
        "gson",
        "Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "c",
        "n",
        "()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;",
        "generator",
        "message_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lteam/opay/pay/message/delegate/MessageMainControl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/message/delegate/MessageMainControl;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/message/delegate/MessageMainControl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/pay/message/delegate/MessageMainControl;->a:Lteam/opay/pay/message/delegate/MessageMainControl;

    .line 7
    .line 8
    sget-object v0, Lteam/opay/pay/message/delegate/MessageMainControl$gson$2;->INSTANCE:Lteam/opay/pay/message/delegate/MessageMainControl$gson$2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lteam/opay/pay/message/delegate/MessageMainControl;->b:Lid8;

    .line 15
    .line 16
    sget-object v0, Lteam/opay/pay/message/delegate/MessageMainControl$generator$2;->INSTANCE:Lteam/opay/pay/message/delegate/MessageMainControl$generator$2;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lteam/opay/pay/message/delegate/MessageMainControl;->c:Lid8;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final A(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V
    .locals 1

    .line 1
    const-string v0, "$params"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/message/delegate/MessageMainControl;->a:Lteam/opay/pay/message/delegate/MessageMainControl;

    .line 7
    .line 8
    check-cast p0, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {v0, p0, p1, p2, p3}, Lteam/opay/pay/message/delegate/MessageMainControl;->E(Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final B(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V
    .locals 1

    .line 1
    const-string v0, "$params"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/message/delegate/MessageMainControl;->a:Lteam/opay/pay/message/delegate/MessageMainControl;

    .line 7
    .line 8
    check-cast p0, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {v0, p0, p1, p2, p3}, Lteam/opay/pay/message/delegate/MessageMainControl;->E(Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final C(Lteam/opay/pay/message/net/ResultData;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static final F(Landroid/widget/FrameLayout;Lteam/opay/pay/message/delegate/NormalForceMessageLayout;Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p6, "$this_apply"

    .line 2
    .line 3
    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p6, "$context"

    .line 7
    .line 8
    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p6, "$item"

    .line 12
    .line 13
    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p6, "$virtualParam"

    .line 17
    .line 18
    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lteam/opay/pay/message/delegate/MessageMainControl;->a:Lteam/opay/pay/message/delegate/MessageMainControl;

    .line 25
    .line 26
    invoke-virtual {p0, p2, p3, p4, p5}, Lteam/opay/pay/message/delegate/MessageMainControl;->t(Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static final I(Lteam/opay/pay/message/net/ResultData;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/message/net/ResultData;->d()Lteam/opay/pay/message/net/Status;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lteam/opay/pay/message/delegate/MessageMainControl$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    aget p0, v0, p0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq p0, v1, :cond_0

    .line 18
    .line 19
    new-instance p0, Lteam/opay/pay/message/utils/MessageStorage;

    .line 20
    .line 21
    invoke-direct {p0}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lteam/opay/pay/message/utils/MessageStorage;->o(Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v1, Lteam/opay/pay/message/event/UploadInfoSuccessed;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Lteam/opay/pay/message/event/UploadInfoSuccessed;-><init>(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Lteam/opay/pay/message/utils/MessageStorage;

    .line 41
    .line 42
    invoke-direct {p0}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Lteam/opay/pay/message/utils/MessageStorage;->o(Z)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public static synthetic a(Landroid/widget/FrameLayout;Lteam/opay/pay/message/delegate/NormalForceMessageLayout;Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lteam/opay/pay/message/delegate/MessageMainControl;->F(Landroid/widget/FrameLayout;Lteam/opay/pay/message/delegate/NormalForceMessageLayout;Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/message/delegate/MessageMainControl;->A(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/message/delegate/MessageMainControl;->p(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lteam/opay/pay/message/net/ResultData;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/message/delegate/MessageMainControl;->I(Lteam/opay/pay/message/net/ResultData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lteam/opay/pay/message/net/ResultData;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/message/delegate/MessageMainControl;->C(Lteam/opay/pay/message/net/ResultData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/message/delegate/MessageMainControl;->z(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/message/delegate/MessageMainControl;->B(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lteam/opay/pay/message/net/ResultData;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/message/delegate/MessageMainControl;->u(Lteam/opay/pay/message/net/ResultData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Ljava/lang/String;Lorg/json/JSONObject;[Lkotlin/Pair;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/message/delegate/MessageMainControl;->y(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Ljava/lang/String;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lteam/opay/pay/message/bean/NoticeItemData;Lteam/opay/swarmfoundation/ScopeExecutors;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/message/delegate/MessageMainControl;->x(Lteam/opay/pay/message/bean/NoticeItemData;Lteam/opay/swarmfoundation/ScopeExecutors;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Landroid/widget/FrameLayout;Lteam/opay/pay/message/delegate/CouponForceMessageLayout;Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lteam/opay/pay/message/delegate/MessageMainControl;->w(Landroid/widget/FrameLayout;Lteam/opay/pay/message/delegate/CouponForceMessageLayout;Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lteam/opay/pay/message/delegate/MessageMainControl;Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/message/delegate/MessageMainControl;->t(Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final p(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    const-string v0, "$context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$successCallback"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lteam/opay/pay/message/delegate/MessageMainControl;->a:Lteam/opay/pay/message/delegate/MessageMainControl;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lteam/opay/pay/message/delegate/MessageMainControl;->G(Landroid/content/Context;)Lteam/opay/pay/message/bean/TokenRequestV2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lhpc;->a:Lhpc;

    .line 18
    .line 19
    invoke-virtual {v1, p0, v0}, Lhpc;->e(Landroid/content/Context;Lteam/opay/pay/message/bean/TokenRequestV2;)Landroidx/lifecycle/LiveData;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v1, Lteam/opay/pay/message/delegate/MessageMainControl$getSignToken$1$1;

    .line 24
    .line 25
    invoke-direct {v1, p0, v0, p1}, Lteam/opay/pay/message/delegate/MessageMainControl$getSignToken$1$1;-><init>(Landroidx/lifecycle/LiveData;Lteam/opay/pay/message/bean/TokenRequestV2;Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    const/4 p1, 0x0

    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    invoke-static {v2, v3, v1, p0, p1}, Lwje;->d(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static final u(Lteam/opay/pay/message/net/ResultData;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static final w(Landroid/widget/FrameLayout;Lteam/opay/pay/message/delegate/CouponForceMessageLayout;Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p6, "$this_apply"

    .line 2
    .line 3
    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p6, "$context"

    .line 7
    .line 8
    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p6, "$item"

    .line 12
    .line 13
    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p6, "$virtualParam"

    .line 17
    .line 18
    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lteam/opay/pay/message/delegate/MessageMainControl;->a:Lteam/opay/pay/message/delegate/MessageMainControl;

    .line 25
    .line 26
    invoke-virtual {p0, p2, p3, p4, p5}, Lteam/opay/pay/message/delegate/MessageMainControl;->t(Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static final x(Lteam/opay/pay/message/bean/NoticeItemData;Lteam/opay/swarmfoundation/ScopeExecutors;Landroid/content/Context;)V
    .locals 10

    .line 1
    const-string v0, "$executors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/message/delegate/MessageMainControl;->a:Lteam/opay/pay/message/delegate/MessageMainControl;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lteam/opay/pay/message/delegate/MessageMainControl;->r(Lteam/opay/pay/message/bean/NoticeItemData;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    invoke-virtual {v0, p0}, Lteam/opay/pay/message/delegate/MessageMainControl;->s(Lteam/opay/pay/message/bean/NoticeItemData;)[Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    invoke-virtual {v0}, Lteam/opay/pay/message/delegate/MessageMainControl;->n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_e

    .line 21
    .line 22
    new-instance v2, Lkotlin/jvm/internal/SpreadBuilder;

    .line 23
    .line 24
    const/16 v3, 0x11

    .line 25
    .line 26
    invoke-direct {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const-string v3, "push_id"

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v7, v4

    .line 40
    :goto_0
    invoke-static {v3, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const-string v3, "user_unique_id"

    .line 48
    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move-object v7, v4

    .line 57
    :goto_1
    invoke-static {v3, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const-string v3, "push_config_id"

    .line 65
    .line 66
    if-eqz v5, :cond_2

    .line 67
    .line 68
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move-object v7, v4

    .line 74
    :goto_2
    invoke-static {v3, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const-string v3, "push_batch_id"

    .line 82
    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    move-object v7, v4

    .line 91
    :goto_3
    invoke-static {v3, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const-string v3, "channel_id"

    .line 99
    .line 100
    if-eqz v5, :cond_4

    .line 101
    .line 102
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    goto :goto_4

    .line 107
    :cond_4
    move-object v7, v4

    .line 108
    :goto_4
    invoke-static {v3, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    const-string v3, "channel_type"

    .line 116
    .line 117
    if-eqz v5, :cond_5

    .line 118
    .line 119
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    goto :goto_5

    .line 124
    :cond_5
    move-object v7, v4

    .line 125
    :goto_5
    invoke-static {v3, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    const-string v3, "ab_sdk_version"

    .line 133
    .line 134
    if-eqz v5, :cond_6

    .line 135
    .line 136
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    goto :goto_6

    .line 141
    :cond_6
    move-object v7, v4

    .line 142
    :goto_6
    invoke-static {v3, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    const-string v3, "push_experiment_id"

    .line 150
    .line 151
    if-eqz v5, :cond_7

    .line 152
    .line 153
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    goto :goto_7

    .line 158
    :cond_7
    move-object v7, v4

    .line 159
    :goto_7
    invoke-static {v3, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    if-eqz v5, :cond_8

    .line 167
    .line 168
    const-string v3, "task_unit_id"

    .line 169
    .line 170
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    goto :goto_8

    .line 175
    :cond_8
    move-object v3, v4

    .line 176
    :goto_8
    const-string v7, "$task_unit_id"

    .line 177
    .line 178
    invoke-static {v7, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    sget-object v3, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 186
    .line 187
    invoke-virtual {v3}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-virtual {v3}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v3}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    const-string v8, "APPLOG_ID"

    .line 200
    .line 201
    const-string v9, ""

    .line 202
    .line 203
    invoke-virtual {v7, v3, v8, v9}, Lteam/opay/pay/envconfigapi/ConfigStorage;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    const-string v7, "hid"

    .line 208
    .line 209
    invoke-static {v7, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Lteam/opay/pay/message/delegate/MessageMainControl;->n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    if-eqz v3, :cond_9

    .line 221
    .line 222
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    goto :goto_9

    .line 227
    :cond_9
    move-object v3, v4

    .line 228
    :goto_9
    if-nez v3, :cond_a

    .line 229
    .line 230
    goto :goto_a

    .line 231
    :cond_a
    move-object v9, v3

    .line 232
    :goto_a
    const-string v3, "suid"

    .line 233
    .line 234
    invoke-static {v3, v9}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Lteam/opay/pay/message/delegate/MessageMainControl;->n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    if-eqz v3, :cond_b

    .line 246
    .line 247
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->getABAppLogConfig()Lteam/opay/swarmfoundation/data/IBytedanceAppLog;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    if-eqz v3, :cond_b

    .line 252
    .line 253
    invoke-virtual {v3}, Lteam/opay/swarmfoundation/data/IBytedanceAppLog;->getDeviceId()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    goto :goto_b

    .line 258
    :cond_b
    move-object v3, v4

    .line 259
    :goto_b
    const-string v7, "sdid"

    .line 260
    .line 261
    invoke-static {v7, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Lteam/opay/pay/message/delegate/MessageMainControl;->n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    if-eqz v3, :cond_c

    .line 273
    .line 274
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    goto :goto_c

    .line 279
    :cond_c
    move-object v3, v4

    .line 280
    :goto_c
    const-string v7, "svn"

    .line 281
    .line 282
    invoke-static {v7, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0}, Lteam/opay/pay/message/delegate/MessageMainControl;->n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    if-eqz v0, :cond_d

    .line 294
    .line 295
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    :cond_d
    const-string v0, "svc"

    .line 304
    .line 305
    invoke-static {v0, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    const-string v0, "messageId"

    .line 313
    .line 314
    invoke-virtual {p0}, Lteam/opay/pay/message/bean/NoticeItemData;->f()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-static {v0, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    const-string v0, "is_forcedRemind"

    .line 326
    .line 327
    const-string v3, "1"

    .line 328
    .line 329
    invoke-static {v0, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2, v6}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2}, Lkotlin/jvm/internal/SpreadBuilder;->c()I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    new-array v0, v0, [Lkotlin/Pair;

    .line 344
    .line 345
    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/SpreadBuilder;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, [Lkotlin/Pair;

    .line 350
    .line 351
    const-string v2, "rangers_push_show"

    .line 352
    .line 353
    invoke-interface {v1, v2, v0}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 354
    .line 355
    .line 356
    :cond_e
    invoke-virtual {p0}, Lteam/opay/pay/message/bean/NoticeItemData;->d()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    if-eqz v0, :cond_13

    .line 361
    .line 362
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-nez v0, :cond_f

    .line 367
    .line 368
    goto :goto_e

    .line 369
    :cond_f
    new-instance v0, Lorg/json/JSONObject;

    .line 370
    .line 371
    invoke-virtual {p0}, Lteam/opay/pay/message/bean/NoticeItemData;->d()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    const-string v1, "couponInfo"

    .line 379
    .line 380
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    if-eqz v0, :cond_12

    .line 385
    .line 386
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-nez v1, :cond_10

    .line 391
    .line 392
    goto :goto_d

    .line 393
    :cond_10
    const-string v1, "info"

    .line 394
    .line 395
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-static {v0}, Llmf;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-nez v0, :cond_11

    .line 407
    .line 408
    invoke-virtual {p1}, Lteam/opay/swarmfoundation/ScopeExecutors;->b()Ljava/util/concurrent/Executor;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    new-instance v0, Le99;

    .line 413
    .line 414
    invoke-direct {v0, p2, p0, v5, v6}, Le99;-><init>(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 415
    .line 416
    .line 417
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 418
    .line 419
    .line 420
    goto :goto_f

    .line 421
    :cond_11
    invoke-virtual {p1}, Lteam/opay/swarmfoundation/ScopeExecutors;->b()Ljava/util/concurrent/Executor;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    new-instance v0, Lf99;

    .line 426
    .line 427
    move-object v1, v0

    .line 428
    move-object v2, p2

    .line 429
    move-object v3, p0

    .line 430
    invoke-direct/range {v1 .. v6}, Lf99;-><init>(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Ljava/lang/String;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 431
    .line 432
    .line 433
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 434
    .line 435
    .line 436
    goto :goto_f

    .line 437
    :cond_12
    :goto_d
    invoke-virtual {p1}, Lteam/opay/swarmfoundation/ScopeExecutors;->b()Ljava/util/concurrent/Executor;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    new-instance v0, Ld99;

    .line 442
    .line 443
    invoke-direct {v0, p2, p0, v5, v6}, Ld99;-><init>(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 444
    .line 445
    .line 446
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 447
    .line 448
    .line 449
    goto :goto_f

    .line 450
    :cond_13
    :goto_e
    invoke-virtual {p1}, Lteam/opay/swarmfoundation/ScopeExecutors;->b()Ljava/util/concurrent/Executor;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    new-instance v0, Lc99;

    .line 455
    .line 456
    invoke-direct {v0, p2, p0, v5, v6}, Lc99;-><init>(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 457
    .line 458
    .line 459
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 460
    .line 461
    .line 462
    :goto_f
    return-void
.end method

.method public static final y(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Ljava/lang/String;Lorg/json/JSONObject;[Lkotlin/Pair;)V
    .locals 7

    .line 1
    const-string v0, "$coupon"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$params"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lteam/opay/pay/message/delegate/MessageMainControl;->a:Lteam/opay/pay/message/delegate/MessageMainControl;

    .line 12
    .line 13
    move-object v2, p0

    .line 14
    check-cast v2, Landroid/app/Activity;

    .line 15
    .line 16
    new-instance v4, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    move-object v3, p1

    .line 22
    move-object v5, p3

    .line 23
    move-object v6, p4

    .line 24
    invoke-virtual/range {v1 .. v6}, Lteam/opay/pay/message/delegate/MessageMainControl;->v(Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static final z(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V
    .locals 1

    .line 1
    const-string v0, "$params"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/message/delegate/MessageMainControl;->a:Lteam/opay/pay/message/delegate/MessageMainControl;

    .line 7
    .line 8
    check-cast p0, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {v0, p0, p1, p2, p3}, Lteam/opay/pay/message/delegate/MessageMainControl;->E(Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final D(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    instance-of v0, p2, Landroid/app/Activity;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_1
    move-object v0, p2

    .line 18
    check-cast v0, Landroid/app/Activity;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_a

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_2
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 35
    .line 36
    sget-object v0, Lteam/opay/pay/message/delegate/MessageMainControl;->a:Lteam/opay/pay/message/delegate/MessageMainControl;

    .line 37
    .line 38
    invoke-virtual {v0}, Lteam/opay/pay/message/delegate/MessageMainControl;->o()Lcom/google/gson/Gson;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-class v1, Lteam/opay/pay/message/bean/NoticeItemData;

    .line 43
    .line 44
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lteam/opay/pay/message/bean/NoticeItemData;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    :cond_3
    check-cast p1, Lteam/opay/pay/message/bean/NoticeItemData;

    .line 74
    .line 75
    if-eqz p1, :cond_a

    .line 76
    .line 77
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/NoticeItemData;->h()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_a

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    goto/16 :goto_2

    .line 90
    .line 91
    :cond_4
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/NoticeItemData;->b()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_a

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_5

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/NoticeItemData;->f()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_a

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_6

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_6
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/NoticeItemData;->a()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_9

    .line 128
    .line 129
    :cond_7
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/NoticeItemData;->d()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_9

    .line 134
    .line 135
    new-instance v1, Lorg/json/JSONObject;

    .line 136
    .line 137
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v0, "action"

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v1, "null"

    .line 147
    .line 148
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_9

    .line 153
    .line 154
    if-eqz v0, :cond_9

    .line 155
    .line 156
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_8

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_8
    invoke-virtual {p1, v0}, Lteam/opay/pay/message/bean/NoticeItemData;->i(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_9
    :goto_1
    sget-object v0, Lhpc;->a:Lhpc;

    .line 167
    .line 168
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/NoticeItemData;->f()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v0, p2, v1}, Lhpc;->h(Landroid/content/Context;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    new-instance v1, Lz89;

    .line 177
    .line 178
    invoke-direct {v1}, Lz89;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Lvfa;)V

    .line 182
    .line 183
    .line 184
    new-instance v0, Lteam/opay/swarmfoundation/ScopeExecutors;

    .line 185
    .line 186
    invoke-direct {v0}, Lteam/opay/swarmfoundation/ScopeExecutors;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Lteam/opay/swarmfoundation/ScopeExecutors;->a()Ljava/util/concurrent/Executor;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    new-instance v2, La99;

    .line 194
    .line 195
    invoke-direct {v2, p1, v0, p2}, La99;-><init>(Lteam/opay/pay/message/bean/NoticeItemData;Lteam/opay/swarmfoundation/ScopeExecutors;Landroid/content/Context;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 199
    .line 200
    .line 201
    :cond_a
    :goto_2
    return-void
.end method

.method public final E(Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lteam/opay/pay/message/bean/NoticeItemData;",
            "Lorg/json/JSONObject;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const v0, 0x1020002

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    new-instance v8, Lteam/opay/pay/message/delegate/NormalForceMessageLayout;

    .line 11
    .line 12
    invoke-direct {v8, p1}, Lteam/opay/pay/message/delegate/NormalForceMessageLayout;-><init>(Landroid/app/Activity;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    const/4 v3, -0x2

    .line 19
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    new-instance v9, Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;

    .line 26
    .line 27
    move-object v1, v9

    .line 28
    move-object v2, v0

    .line 29
    move-object v3, v8

    .line 30
    move-object v4, p1

    .line 31
    move-object v5, p2

    .line 32
    move-object v6, p3

    .line 33
    move-object v7, p4

    .line 34
    invoke-direct/range {v1 .. v7}, Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;-><init>(Landroid/widget/FrameLayout;Lteam/opay/pay/message/delegate/NormalForceMessageLayout;Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, p2, v9}, Lteam/opay/pay/message/delegate/NormalForceMessageLayout;->h(Lteam/opay/pay/message/bean/NoticeItemData;Lkotlin/jvm/functions/Function0;)V

    .line 38
    .line 39
    .line 40
    new-instance v9, Lg99;

    .line 41
    .line 42
    move-object v1, v9

    .line 43
    invoke-direct/range {v1 .. v7}, Lg99;-><init>(Landroid/widget/FrameLayout;Lteam/opay/pay/message/delegate/NormalForceMessageLayout;Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final G(Landroid/content/Context;)Lteam/opay/pay/message/bean/TokenRequestV2;
    .locals 24
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "ctx"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/message/delegate/MessageMainControl;->n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->appId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    move-object v3, v1

    .line 22
    goto :goto_2

    .line 23
    :cond_1
    :goto_1
    const-string v1, ""

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :goto_2
    new-instance v1, Lteam/opay/pay/message/utils/MessageStorage;

    .line 27
    .line 28
    invoke-direct {v1}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3}, Lteam/opay/pay/message/utils/MessageStorage;->k(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    const-string v1, "randomUUID().toString()"

    .line 43
    .line 44
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v1, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lteam/opay/swarmfoundation/device/AuthUtil;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/message/delegate/MessageMainControl;->n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v9, 0x0

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->phone()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    goto :goto_3

    .line 65
    :cond_2
    move-object v2, v9

    .line 66
    :goto_3
    sget-object v4, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 67
    .line 68
    const-class v6, Lteam/opay/pay/message/api/MessageCenterSpecialHandlePhoneInterface;

    .line 69
    .line 70
    invoke-virtual {v4, v6}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Lteam/opay/pay/message/api/MessageCenterSpecialHandlePhoneInterface;

    .line 75
    .line 76
    if-eqz v4, :cond_3

    .line 77
    .line 78
    invoke-interface {v4, v0}, Lteam/opay/pay/message/api/MessageCenterSpecialHandlePhoneInterface;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    move-object v4, v0

    .line 83
    goto :goto_4

    .line 84
    :cond_3
    move-object v4, v2

    .line 85
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v2, "phone="

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v2, "&appId="

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v2, "&deviceId="

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    new-instance v2, Lteam/opay/pay/message/utils/MessageStorage;

    .line 115
    .line 116
    invoke-direct {v2}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lteam/opay/pay/message/utils/MessageStorage;->f()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v1, v0}, Lteam/opay/swarmfoundation/device/AuthUtil;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    new-instance v0, Lteam/opay/pay/message/bean/TokenRequest;

    .line 135
    .line 136
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/message/delegate/MessageMainControl;->n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-eqz v1, :cond_4

    .line 141
    .line 142
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    move-object v7, v1

    .line 147
    goto :goto_5

    .line 148
    :cond_4
    move-object v7, v9

    .line 149
    :goto_5
    move-object v2, v0

    .line 150
    invoke-direct/range {v2 .. v8}, Lteam/opay/pay/message/bean/TokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance v1, Lteam/opay/pay/message/bean/TokenRequestV2;

    .line 154
    .line 155
    invoke-virtual {v0}, Lteam/opay/pay/message/bean/TokenRequest;->a()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    invoke-virtual {v0}, Lteam/opay/pay/message/bean/TokenRequest;->c()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    invoke-virtual {v0}, Lteam/opay/pay/message/bean/TokenRequest;->b()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    invoke-virtual {v0}, Lteam/opay/pay/message/bean/TokenRequest;->d()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    invoke-virtual {v0}, Lteam/opay/pay/message/bean/TokenRequest;->f()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v15

    .line 175
    invoke-virtual {v0}, Lteam/opay/pay/message/bean/TokenRequest;->e()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v16

    .line 179
    sget-object v0, Lhpc;->a:Lhpc;

    .line 180
    .line 181
    invoke-virtual {v0}, Lhpc;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    if-eqz v2, :cond_5

    .line 186
    .line 187
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/ICityDataGenerator;->cityId()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    move-object/from16 v17, v2

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_5
    move-object/from16 v17, v9

    .line 195
    .line 196
    :goto_6
    invoke-virtual {v0}, Lhpc;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    if-eqz v2, :cond_6

    .line 201
    .line 202
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/ICityDataGenerator;->cityName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    move-object/from16 v18, v2

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_6
    move-object/from16 v18, v9

    .line 210
    .line 211
    :goto_7
    invoke-virtual {v0}, Lhpc;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    if-eqz v2, :cond_7

    .line 216
    .line 217
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/ICityDataGenerator;->localCode()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    move-object/from16 v19, v2

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_7
    move-object/from16 v19, v9

    .line 225
    .line 226
    :goto_8
    invoke-virtual {v0}, Lhpc;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    if-eqz v2, :cond_8

    .line 231
    .line 232
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    move-object/from16 v20, v2

    .line 241
    .line 242
    goto :goto_9

    .line 243
    :cond_8
    move-object/from16 v20, v9

    .line 244
    .line 245
    :goto_9
    invoke-virtual {v0}, Lhpc;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    if-eqz v2, :cond_9

    .line 250
    .line 251
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->latitude()D

    .line 252
    .line 253
    .line 254
    move-result-wide v2

    .line 255
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    move-object/from16 v21, v2

    .line 260
    .line 261
    goto :goto_a

    .line 262
    :cond_9
    move-object/from16 v21, v9

    .line 263
    .line 264
    :goto_a
    invoke-virtual {v0}, Lhpc;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    if-eqz v2, :cond_a

    .line 269
    .line 270
    invoke-interface {v2}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->longitude()D

    .line 271
    .line 272
    .line 273
    move-result-wide v2

    .line 274
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    move-object/from16 v22, v2

    .line 279
    .line 280
    goto :goto_b

    .line 281
    :cond_a
    move-object/from16 v22, v9

    .line 282
    .line 283
    :goto_b
    invoke-virtual {v0}, Lhpc;->b()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    if-eqz v0, :cond_b

    .line 288
    .line 289
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->platform()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    :cond_b
    move-object/from16 v23, v9

    .line 294
    .line 295
    move-object v10, v1

    .line 296
    invoke-direct/range {v10 .. v23}, Lteam/opay/pay/message/bean/TokenRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    return-object v1
.end method

.method public final H(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 7
    .line 8
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 15
    .line 16
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lteam/opay/pay/message/utils/MessageStorage;

    .line 27
    .line 28
    invoke-direct {v3}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lteam/opay/pay/message/utils/MessageStorage;->e()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "phone"

    .line 36
    .line 37
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->platform()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move-object v4, v3

    .line 49
    :goto_0
    const-string v5, "platform"

    .line 50
    .line 51
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->appId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object v4, v3

    .line 62
    :goto_1
    const-string v5, "appId"

    .line 63
    .line 64
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->deviceId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    move-object v4, v3

    .line 75
    :goto_2
    const-string v5, "deviceId"

    .line 76
    .line 77
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    if-nez v4, :cond_4

    .line 87
    .line 88
    :cond_3
    const-string v4, ""

    .line 89
    .line 90
    :cond_4
    const-string v5, "userId"

    .line 91
    .line 92
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->getLocale()Ljava/util/Locale;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    if-eqz v4, :cond_5

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    :cond_5
    const-string v4, "language"

    .line 108
    .line 109
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->fcmToken()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-nez v0, :cond_7

    .line 119
    .line 120
    :cond_6
    const-string v0, "0000000000"

    .line 121
    .line 122
    :cond_7
    const-string v3, "fcmToken"

    .line 123
    .line 124
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    new-instance v0, Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    const-string v0, "list"

    .line 136
    .line 137
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    sget-object v0, Lhpc;->a:Lhpc;

    .line 141
    .line 142
    invoke-virtual {v0, p1, v1}, Lhpc;->i(Landroid/content/Context;Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    new-instance v0, Lb99;

    .line 147
    .line 148
    invoke-direct {v0}, Lb99;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Lvfa;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public final m(Ljava/lang/String;Lteam/opay/pay/message/net/ResultData;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/message/net/ResultData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/pay/message/net/ResultData<",
            "+",
            "Lteam/opay/pay/message/bean/TokenResponse;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_3

    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/pay/message/net/ResultData;->a()Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0xc8

    .line 16
    .line 17
    if-ne v1, v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p2}, Lteam/opay/pay/message/net/ResultData;->b()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lteam/opay/pay/message/bean/TokenResponse;

    .line 24
    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    new-instance v1, Lteam/opay/pay/message/utils/MessageStorage;

    .line 28
    .line 29
    invoke-direct {v1}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/TokenResponse;->b()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lteam/opay/pay/message/utils/MessageStorage;->p(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/TokenResponse;->c()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    const-string v1, ""

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/TokenResponse;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    new-instance p1, Lteam/opay/pay/message/utils/MessageStorage;

    .line 60
    .line 61
    invoke-direct {p1}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/TokenResponse;->a()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Lteam/opay/pay/message/utils/MessageStorage;->n(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    :cond_2
    sget-object p1, Lteam/opay/pay/message/utils/MessageFlowBus;->a:Lteam/opay/pay/message/utils/MessageFlowBus;

    .line 73
    .line 74
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 75
    .line 76
    const-string v1, "msg_token_success_key"

    .line 77
    .line 78
    invoke-virtual {p1, v1, p2}, Lteam/opay/pay/message/utils/MessageFlowBus;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_0
    return v0
.end method

.method public final n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/message/delegate/MessageMainControl;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 8
    .line 9
    return-object v0
.end method

.method public final o()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/message/delegate/MessageMainControl;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/gson/Gson;

    .line 8
    .line 9
    return-object v0
.end method

.method public final q(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "successCallback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/swarmfoundation/ScopeExecutors;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/swarmfoundation/ScopeExecutors;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/swarmfoundation/ScopeExecutors;->a()Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lw89;

    .line 21
    .line 22
    invoke-direct {v1, p1, p2}, Lw89;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final r(Lteam/opay/pay/message/bean/NoticeItemData;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/NoticeItemData;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/NoticeItemData;->d()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "taskid"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "dataJson.optString(\"taskid\")"

    .line 31
    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Llmf;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final s(Lteam/opay/pay/message/bean/NoticeItemData;)[Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/message/bean/NoticeItemData;",
            ")[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/NoticeItemData;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/NoticeItemData;->d()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo p1, "virtualParam"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string p1, "paramsString"

    .line 25
    .line 26
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-lez p1, :cond_0

    .line 34
    .line 35
    new-instance p1, Lteam/opay/pay/message/delegate/MessageMainControl$b;

    .line 36
    .line 37
    invoke-direct {p1}, Lteam/opay/pay/message/delegate/MessageMainControl$b;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Lcom/google/gson/Gson;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 47
    .line 48
    .line 49
    const/4 v6, 0x4

    .line 50
    const/4 v7, 0x0

    .line 51
    const-string v3, "\\"

    .line 52
    .line 53
    const-string v4, ""

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ljava/util/HashMap;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move-object p1, v1

    .line 68
    :goto_0
    const/4 v0, 0x0

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    invoke-static {p1}, Lkotlin/collections/e;->z(Ljava/util/Map;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    new-array v1, v0, [Lkotlin/Pair;

    .line 78
    .line 79
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 84
    .line 85
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    move-object v1, p1

    .line 89
    check-cast v1, [Lkotlin/Pair;

    .line 90
    .line 91
    :cond_1
    if-nez v1, :cond_2

    .line 92
    .line 93
    new-array v1, v0, [Lkotlin/Pair;

    .line 94
    .line 95
    :cond_2
    return-object v1
.end method

.method public final t(Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lteam/opay/pay/message/bean/NoticeItemData;",
            "Lorg/json/JSONObject;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/message/delegate/MessageMainControl;->n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 2
    new-instance v3, Lkotlin/jvm/internal/SpreadBuilder;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    const-string v4, "push_id"

    if-eqz p3, :cond_0

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 3
    const-string v4, "user_unique_id"

    if-eqz p3, :cond_1

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_1
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 4
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 5
    const-string v4, "push_config_id"

    if-eqz p3, :cond_2

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 6
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 7
    const-string v4, "push_batch_id"

    if-eqz p3, :cond_3

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v2

    :goto_3
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 8
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 9
    const-string v4, "channel_id"

    if-eqz p3, :cond_4

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object v5, v2

    :goto_4
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 10
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 11
    const-string v4, "channel_type"

    if-eqz p3, :cond_5

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_5

    :cond_5
    move-object v5, v2

    :goto_5
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 12
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 13
    const-string v4, "ab_sdk_version"

    if-eqz p3, :cond_6

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_6

    :cond_6
    move-object v5, v2

    :goto_6
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 14
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 15
    const-string v4, "push_experiment_id"

    if-eqz p3, :cond_7

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_7

    :cond_7
    move-object v5, v2

    :goto_7
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 16
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    if-eqz p3, :cond_8

    .line 17
    const-string v4, "task_unit_id"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_8

    :cond_8
    move-object v4, v2

    :goto_8
    const-string v5, "$task_unit_id"

    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 18
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 19
    sget-object v4, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    invoke-virtual {v4}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    move-result-object v5

    .line 20
    invoke-virtual {v4}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    move-result-object v4

    invoke-virtual {v4}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    move-result-object v4

    const-string v6, "APPLOG_ID"

    invoke-virtual {v5, v4, v6, v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 21
    const-string v5, "hid"

    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/message/delegate/MessageMainControl;->n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_9
    move-object v4, v2

    :goto_9
    if-nez v4, :cond_a

    move-object v4, v1

    :cond_a
    const-string v5, "suid"

    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 24
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/message/delegate/MessageMainControl;->n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-interface {v4}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->getABAppLogConfig()Lteam/opay/swarmfoundation/data/IBytedanceAppLog;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lteam/opay/swarmfoundation/data/IBytedanceAppLog;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_b
    move-object v4, v2

    :goto_a
    const-string v5, "sdid"

    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Lteam/opay/pay/message/delegate/MessageMainControl;->n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-interface {v4}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_c
    move-object v4, v2

    :goto_b
    const-string v5, "svn"

    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/message/delegate/MessageMainControl;->n()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-interface {v4}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_c

    :cond_d
    move-object v4, v2

    :goto_c
    const-string v5, "svc"

    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 31
    const-string v4, "messageId"

    invoke-virtual {p2}, Lteam/opay/pay/message/bean/NoticeItemData;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 33
    const-string v4, "is_forcedRemind"

    const-string v5, "1"

    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 34
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    invoke-virtual {v3, p4}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lkotlin/jvm/internal/SpreadBuilder;->c()I

    move-result p4

    new-array p4, p4, [Lkotlin/Pair;

    invoke-virtual {v3, p4}, Lkotlin/jvm/internal/SpreadBuilder;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lkotlin/Pair;

    .line 35
    const-string v3, "rangers_push_click"

    invoke-interface {v0, v3, p4}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 36
    :cond_e
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/NoticeItemData;->d()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Llmf;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p1}, Ln97;->c(Ljava/lang/String;Landroid/content/Context;)Z

    if-eqz p3, :cond_f

    .line 37
    const-string p4, "businessType"

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_f
    if-nez v2, :cond_10

    move-object v8, v1

    goto :goto_d

    :cond_10
    move-object v8, v2

    .line 38
    :goto_d
    sget-object p3, Lhpc;->a:Lhpc;

    .line 39
    new-instance p4, Lteam/opay/pay/message/bean/MessageStatueRequest;

    .line 40
    new-instance v0, Lteam/opay/pay/message/utils/MessageStorage;

    invoke-direct {v0}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    invoke-virtual {v0}, Lteam/opay/pay/message/utils/MessageStorage;->b()Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/NoticeItemData;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v3, p4

    .line 42
    invoke-direct/range {v3 .. v10}, Lteam/opay/pay/message/bean/MessageStatueRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILteam/opay/pay/message/bean/MessageArriveType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    invoke-virtual {p3, p1, p4}, Lhpc;->j(Landroid/content/Context;Lteam/opay/pay/message/bean/MessageStatueRequest;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Ly89;

    invoke-direct {p2}, Ly89;-><init>()V

    .line 44
    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->observeForever(Lvfa;)V

    return-void
.end method

.method public final v(Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;Lorg/json/JSONObject;[Lkotlin/Pair;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lteam/opay/pay/message/bean/NoticeItemData;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v7, p1

    .line 2
    const v0, 0x1020002

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v8, v0

    .line 10
    check-cast v8, Landroid/widget/FrameLayout;

    .line 11
    .line 12
    new-instance v9, Lteam/opay/pay/message/delegate/CouponForceMessageLayout;

    .line 13
    .line 14
    invoke-direct {v9, p1}, Lteam/opay/pay/message/delegate/CouponForceMessageLayout;-><init>(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    const/4 v2, -0x2

    .line 21
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v8, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/NoticeItemData;->d()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Llmf;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    new-instance v11, Lteam/opay/pay/message/delegate/MessageMainControl$showCouponPush$1$1;

    .line 36
    .line 37
    move-object v0, v11

    .line 38
    move-object v1, v8

    .line 39
    move-object v2, v9

    .line 40
    move-object v3, p1

    .line 41
    move-object v4, p2

    .line 42
    move-object/from16 v5, p4

    .line 43
    .line 44
    move-object/from16 v6, p5

    .line 45
    .line 46
    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/message/delegate/MessageMainControl$showCouponPush$1$1;-><init>(Landroid/widget/FrameLayout;Lteam/opay/pay/message/delegate/CouponForceMessageLayout;Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 47
    .line 48
    .line 49
    move-object v0, p3

    .line 50
    invoke-virtual {v9, p3, v10, v11}, Lteam/opay/pay/message/delegate/CouponForceMessageLayout;->h(Lorg/json/JSONObject;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 51
    .line 52
    .line 53
    new-instance v10, Lx89;

    .line 54
    .line 55
    move-object v0, v10

    .line 56
    invoke-direct/range {v0 .. v6}, Lx89;-><init>(Landroid/widget/FrameLayout;Lteam/opay/pay/message/delegate/CouponForceMessageLayout;Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
