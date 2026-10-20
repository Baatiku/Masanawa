.class final Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MessageMainControl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/message/delegate/MessageMainControl;->E(Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $content:Landroid/widget/FrameLayout;

.field final synthetic $context:Landroid/app/Activity;

.field final synthetic $item:Lteam/opay/pay/message/bean/NoticeItemData;

.field final synthetic $taskJson:Lorg/json/JSONObject;

.field final synthetic $this_apply:Lteam/opay/pay/message/delegate/NormalForceMessageLayout;

.field final synthetic $virtualParam:[Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Lteam/opay/pay/message/delegate/NormalForceMessageLayout;Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/FrameLayout;",
            "Lteam/opay/pay/message/delegate/NormalForceMessageLayout;",
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
    iput-object p1, p0, Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;->$content:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;->$this_apply:Lteam/opay/pay/message/delegate/NormalForceMessageLayout;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;->$context:Landroid/app/Activity;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;->$item:Lteam/opay/pay/message/bean/NoticeItemData;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;->$taskJson:Lorg/json/JSONObject;

    .line 10
    .line 11
    iput-object p6, p0, Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;->$virtualParam:[Lkotlin/Pair;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget-object v0, p0, Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;->$content:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;->$this_apply:Lteam/opay/pay/message/delegate/NormalForceMessageLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    sget-object v0, Lteam/opay/pay/message/delegate/MessageMainControl;->a:Lteam/opay/pay/message/delegate/MessageMainControl;

    iget-object v1, p0, Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;->$context:Landroid/app/Activity;

    iget-object v2, p0, Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;->$item:Lteam/opay/pay/message/bean/NoticeItemData;

    iget-object v3, p0, Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;->$taskJson:Lorg/json/JSONObject;

    iget-object v4, p0, Lteam/opay/pay/message/delegate/MessageMainControl$showNormalPush$1$1;->$virtualParam:[Lkotlin/Pair;

    invoke-static {v0, v1, v2, v3, v4}, Lteam/opay/pay/message/delegate/MessageMainControl;->l(Lteam/opay/pay/message/delegate/MessageMainControl;Landroid/app/Activity;Lteam/opay/pay/message/bean/NoticeItemData;Lorg/json/JSONObject;[Lkotlin/Pair;)V

    return-void
.end method
