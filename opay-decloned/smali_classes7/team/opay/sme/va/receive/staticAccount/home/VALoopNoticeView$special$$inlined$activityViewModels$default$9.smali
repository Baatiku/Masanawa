.class public final Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$9;
.super Ljava/lang/Object;
.source "ViewModelLazy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/ViewModelProvider$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$9;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/ViewModelProvider$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$9;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-static {v0}, Ln0g;->e(Landroid/view/ViewGroup;)Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "<get-defaultViewModelProviderFactory>(...)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/VALoopNoticeView$special$$inlined$activityViewModels$default$9;->a()Landroidx/lifecycle/ViewModelProvider$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
