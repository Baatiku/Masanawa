.class final Lteam/opay/pay/message/module/MessageCenterFragment$noticeViewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MessageCenterFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/message/module/MessageCenterFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lteam/opay/pay/message/module/OMessageCenterViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lteam/opay/pay/message/module/OMessageCenterViewModel;",
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
.field final synthetic this$0:Lteam/opay/pay/message/module/MessageCenterFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/message/module/MessageCenterFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/message/module/MessageCenterFragment$noticeViewModel$2;->this$0:Lteam/opay/pay/message/module/MessageCenterFragment;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/message/module/MessageCenterFragment$noticeViewModel$2;->invoke()Lteam/opay/pay/message/module/OMessageCenterViewModel;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lteam/opay/pay/message/module/OMessageCenterViewModel;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lteam/opay/pay/message/module/MessageCenterFragment$noticeViewModel$2;->this$0:Lteam/opay/pay/message/module/MessageCenterFragment;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelProviders;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lteam/opay/pay/message/module/OMessageCenterViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    const-string v1, "of(this).get(OMessageCenterViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lteam/opay/pay/message/module/OMessageCenterViewModel;

    return-object v0
.end method
