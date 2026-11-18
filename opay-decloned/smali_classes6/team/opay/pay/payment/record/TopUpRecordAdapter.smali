.class public final Lteam/opay/pay/payment/record/TopUpRecordAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TopUpRecordAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/record/TopUpRecordAdapter$SingleViewHolder;,
        Lteam/opay/pay/payment/record/TopUpRecordAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/pay/payment/record/ToPupViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001KB\'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u0011\u001a\u00020\u00102\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u001f\u0010#\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008#\u0010$R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u001c\u00101\u001a\n .*\u0004\u0018\u00010-0-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u001a\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R<\u0010<\u001a\u001c\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u0010\u0018\u0001058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R6\u0010D\u001a\u0016\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0010\u0018\u00010=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u001d\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\"0E8\u0006\u00a2\u0006\u000c\n\u0004\u0008F\u0010G\u001a\u0004\u0008H\u0010I\u00a8\u0006L"
    }
    d2 = {
        "Lteam/opay/pay/payment/record/TopUpRecordAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/pay/payment/record/ToPupViewHolder;",
        "Landroidx/fragment/app/FragmentActivity;",
        "fragmentActivity",
        "Lteam/opay/pay/payment/record/SlideRecyclerView;",
        "recyclerView",
        "Lag8;",
        "owner",
        "Lteam/opay/pay/payment/record/TopUpRecordViewModel;",
        "viewModel",
        "<init>",
        "(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/payment/record/SlideRecyclerView;Lag8;Lteam/opay/pay/payment/record/TopUpRecordViewModel;)V",
        "",
        "Lteam/opay/pay/payment/record/TopUpRecord;",
        "list",
        "",
        "x",
        "(Ljava/util/List;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "u",
        "(Landroid/view/ViewGroup;I)Lteam/opay/pay/payment/record/ToPupViewHolder;",
        "getItemCount",
        "()I",
        "holder",
        "position",
        "t",
        "(Lteam/opay/pay/payment/record/ToPupViewHolder;I)V",
        "item",
        "p",
        "(Lteam/opay/pay/payment/record/TopUpRecord;)V",
        "",
        "o",
        "(Lteam/opay/pay/payment/record/TopUpRecord;I)Z",
        "a",
        "Landroidx/fragment/app/FragmentActivity;",
        "b",
        "Lteam/opay/pay/payment/record/SlideRecyclerView;",
        "c",
        "Lag8;",
        "d",
        "Lteam/opay/pay/payment/record/TopUpRecordViewModel;",
        "Landroid/view/LayoutInflater;",
        "kotlin.jvm.PlatformType",
        "e",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "f",
        "Ljava/util/List;",
        "dataList",
        "Lkotlin/Function3;",
        "g",
        "Lhm6;",
        "getDeleteCallback",
        "()Lhm6;",
        "w",
        "(Lhm6;)V",
        "deleteCallback",
        "Lkotlin/Function2;",
        "h",
        "Lkotlin/jvm/functions/Function2;",
        "getClickCallback",
        "()Lkotlin/jvm/functions/Function2;",
        "v",
        "(Lkotlin/jvm/functions/Function2;)V",
        "clickCallback",
        "Landroidx/lifecycle/MutableLiveData;",
        "i",
        "Landroidx/lifecycle/MutableLiveData;",
        "s",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loading",
        "SingleViewHolder",
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
.field public final a:Landroidx/fragment/app/FragmentActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/payment/record/SlideRecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lag8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/pay/payment/record/TopUpRecordViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroid/view/LayoutInflater;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/record/TopUpRecord;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lhm6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhm6<",
            "-",
            "Lteam/opay/pay/payment/record/TopUpRecord;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lteam/opay/pay/payment/record/TopUpRecord;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Landroidx/lifecycle/MutableLiveData;
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


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/payment/record/SlideRecyclerView;Lag8;Lteam/opay/pay/payment/record/TopUpRecordViewModel;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/payment/record/SlideRecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/payment/record/TopUpRecordViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fragmentActivity"

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
    const-string v0, "owner"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "viewModel"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->a:Landroidx/fragment/app/FragmentActivity;

    .line 25
    .line 26
    iput-object p2, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->b:Lteam/opay/pay/payment/record/SlideRecyclerView;

    .line 27
    .line 28
    iput-object p3, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->c:Lag8;

    .line 29
    .line 30
    iput-object p4, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->d:Lteam/opay/pay/payment/record/TopUpRecordViewModel;

    .line 31
    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->e:Landroid/view/LayoutInflater;

    .line 37
    .line 38
    new-instance p1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->f:Ljava/util/List;

    .line 44
    .line 45
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->i:Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->r(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->q(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->o(Lteam/opay/pay/payment/record/TopUpRecord;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic n(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->p(Lteam/opay/pay/payment/record/TopUpRecord;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final q(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->d:Lteam/opay/pay/payment/record/TopUpRecordViewModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/record/TopUpRecordViewModel;->z(Lteam/opay/pay/payment/record/TopUpRecord;)Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->c:Lag8;

    .line 8
    .line 9
    new-instance v2, Ldoe;

    .line 10
    .line 11
    invoke-direct {v2, p0, p1}, Ldoe;-><init>(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final r(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, v1

    .line 12
    :goto_0
    sget-object v3, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    if-ne v2, v3, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 v2, 0x0

    .line 20
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_2
    if-nez v1, :cond_3

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    sget-object v0, Lteam/opay/pay/payment/record/TopUpRecordAdapter$a;->a:[I

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    aget v0, v0, v1

    .line 44
    .line 45
    :goto_2
    if-eq v0, v4, :cond_6

    .line 46
    .line 47
    const/4 p1, 0x2

    .line 48
    if-eq v0, p1, :cond_4

    .line 49
    .line 50
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    iget-object p1, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->a:Landroidx/fragment/app/FragmentActivity;

    .line 55
    .line 56
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    if-nez p2, :cond_5

    .line 61
    .line 62
    iget-object p0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->a:Landroidx/fragment/app/FragmentActivity;

    .line 63
    .line 64
    sget p2, Lteam/opay/pay/R$string;->bad_gateway_error:I

    .line 65
    .line 66
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const-string p0, "getString(...)"

    .line 71
    .line 72
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_5
    invoke-static {p1, p2}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_6
    iget-object p2, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->f:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    iget-object v0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->f:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 91
    .line 92
    .line 93
    if-lez p2, :cond_7

    .line 94
    .line 95
    add-int/lit8 v0, p2, -0x1

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 98
    .line 99
    .line 100
    :cond_7
    iget-object v0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->g:Lhm6;

    .line 101
    .line 102
    if-eqz v0, :cond_8

    .line 103
    .line 104
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    iget-object p0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->f:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-interface {v0, p1, p2, p0}, Lhm6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    :cond_8
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 122
    .line 123
    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->f:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final o(Lteam/opay/pay/payment/record/TopUpRecord;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->b:Lteam/opay/pay/payment/record/SlideRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/payment/record/SlideRecyclerView;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->b:Lteam/opay/pay/payment/record/SlideRecyclerView;

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/pay/payment/record/SlideRecyclerView;->a()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->h:Lkotlin/jvm/functions/Function2;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/payment/record/ToPupViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->t(Lteam/opay/pay/payment/record/ToPupViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->u(Landroid/view/ViewGroup;I)Lteam/opay/pay/payment/record/ToPupViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final p(Lteam/opay/pay/payment/record/TopUpRecord;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->a:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/payment/record/DeleteConfirmDialogFragment;->k:Lteam/opay/pay/payment/record/DeleteConfirmDialogFragment$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/payment/record/DeleteConfirmDialogFragment$Companion;->a()Lteam/opay/pay/payment/record/DeleteConfirmDialogFragment;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcoe;

    .line 10
    .line 11
    invoke-direct {v2, p0, p1}, Lcoe;-><init>(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lteam/opay/pay/payment/record/DeleteConfirmDialogFragment;->Q(Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final s()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public t(Lteam/opay/pay/payment/record/ToPupViewHolder;I)V
    .locals 1
    .param p1    # Lteam/opay/pay/payment/record/ToPupViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->f:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/pay/payment/record/TopUpRecord;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1, v0, p2}, Lteam/opay/pay/payment/record/ToPupViewHolder;->a(Lteam/opay/pay/payment/record/TopUpRecord;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public u(Landroid/view/ViewGroup;I)Lteam/opay/pay/payment/record/ToPupViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->e:Landroid/view/LayoutInflater;

    .line 7
    .line 8
    sget v0, Lteam/opay/pay/R$layout;->top_up_record_single_item:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Lteam/opay/pay/payment/record/TopUpRecordAdapter$SingleViewHolder;

    .line 16
    .line 17
    invoke-static {p1}, Lroe;->bind(Landroid/view/View;)Lroe;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "bind(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Lteam/opay/pay/payment/record/TopUpRecordAdapter$SingleViewHolder;-><init>(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lroe;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public final v(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lteam/opay/pay/payment/record/TopUpRecord;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->h:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final w(Lhm6;)V
    .locals 0
    .param p1    # Lhm6;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhm6<",
            "-",
            "Lteam/opay/pay/payment/record/TopUpRecord;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->g:Lhm6;

    .line 2
    .line 3
    return-void
.end method

.method public final x(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/record/TopUpRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->f:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->f:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
