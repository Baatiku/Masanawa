.class public final Lteam/opay/pay/home/dialog/HomeBusniessClient;
.super Ljava/lang/Object;
.source "HomeBusniessClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/dialog/HomeBusniessClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J1\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/home/dialog/HomeBusniessClient;",
        "",
        "<init>",
        "()V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/home/dialog/HomeDialogTask;",
        "",
        "taskFinishCallback",
        "a",
        "(Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function1;)V",
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
.field public static final a:Lteam/opay/pay/home/dialog/HomeBusniessClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/dialog/HomeBusniessClient$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/dialog/HomeBusniessClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/dialog/HomeBusniessClient;->a:Lteam/opay/pay/home/dialog/HomeBusniessClient$Companion;

    .line 8
    .line 9
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


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/home/dialog/HomeDialogTask;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "recyclerView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "taskFinishCallback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-class v0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lteam/opay/pay/home/dialog/HomeBusniessClient$start$$inlined$activityViewModels$default$1;

    .line 23
    .line 24
    invoke-direct {v1, p1}, Lteam/opay/pay/home/dialog/HomeBusniessClient$start$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lteam/opay/pay/home/dialog/HomeBusniessClient$start$$inlined$activityViewModels$default$2;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v2, v3, p1}, Lteam/opay/pay/home/dialog/HomeBusniessClient$start$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lteam/opay/pay/home/dialog/HomeBusniessClient$start$$inlined$activityViewModels$default$3;

    .line 34
    .line 35
    invoke-direct {v3, p1}, Lteam/opay/pay/home/dialog/HomeBusniessClient$start$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 47
    .line 48
    new-instance v1, Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 49
    .line 50
    invoke-direct {v1}, Lteam/opay/pay/home/dialog/HomeDialogManager;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v2, Lteam/opay/pay/home/dialog/HomeBusniessClient$a;

    .line 54
    .line 55
    invoke-direct {v2, p2, p3, v0}, Lteam/opay/pay/home/dialog/HomeBusniessClient$a;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function1;Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lteam/opay/pay/home/dialog/HomeDialogManager;->q(Lteam/opay/pay/home/dialog/HomeDialogManager$a;)Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    new-instance p3, Lteam/opay/pay/home/dialog/HomeGuideTask;

    .line 63
    .line 64
    invoke-direct {p3}, Lteam/opay/pay/home/dialog/HomeGuideTask;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p3}, Lteam/opay/pay/home/dialog/HomeDialogManager;->l(Lteam/opay/pay/home/dialog/HomeDialogTask;)Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    new-instance p3, Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 72
    .line 73
    invoke-direct {p3, p1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p3}, Lteam/opay/pay/home/dialog/HomeDialogManager;->l(Lteam/opay/pay/home/dialog/HomeDialogTask;)Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    new-instance p3, Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-direct {p3, v0}, Lteam/opay/pay/home/dialog/HomeThemeNoticeTask;-><init>(Landroid/app/Activity;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p3}, Lteam/opay/pay/home/dialog/HomeDialogManager;->l(Lteam/opay/pay/home/dialog/HomeDialogTask;)Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    new-instance p3, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;

    .line 94
    .line 95
    invoke-direct {p3, p1}, Lteam/opay/pay/home/clipboard/HomeReadClipboardTask;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p3}, Lteam/opay/pay/home/dialog/HomeDialogManager;->l(Lteam/opay/pay/home/dialog/HomeDialogTask;)Lteam/opay/pay/home/dialog/HomeDialogManager;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p2, p1}, Lteam/opay/pay/home/dialog/HomeDialogManager;->s(Landroidx/fragment/app/Fragment;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method
