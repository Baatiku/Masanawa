.class public final Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;
.super Lteam/opay/business/dialog/fragment/BizDialogFragment2;
.source "NoticeDialogFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0003R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;",
        "Lteam/opay/business/dialog/fragment/BizDialogFragment2;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onPause",
        "onResume",
        "Leb3;",
        "u",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "o0",
        "()Leb3;",
        "binding",
        "business-dialog_release"
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
.field public static final synthetic v:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final u:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/business/dialog/databinding/DialogFragmentNoticeDialogV2Binding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->v:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 5
    .line 6
    const-class v1, Leb3;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->u:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic k0(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->q0(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l0(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->s0(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->p0(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n0(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->r0(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final p0(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->d0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final q0(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->b0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final r0(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p0, v0, v1, v0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->f0(Lteam/opay/business/dialog/fragment/BizDialogFragment2;Ljava/lang/String;ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final s0(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Leb3;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 6
    .line 7
    const-string p1, "ivHeader"

    .line 8
    .line 9
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lg0g;->d(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final o0()Leb3;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->u:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->v:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;->g(Landroidx/fragment/app/Fragment;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Leb3;

    .line 13
    .line 14
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Leb3;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "getRoot(...)"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Leb3;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Leb3;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Leb3;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
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
    invoke-super {p0, p1, p2}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Leb3;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    const-string p2, "actionClose"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Liy9;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Liy9;-><init>(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Leb3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 35
    .line 36
    const-string v0, "actionCancel"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljy9;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Ljy9;-><init>(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p1, p1, Leb3;->d:Lcom/google/android/material/button/MaterialButton;

    .line 54
    .line 55
    const-string v1, "actionConfirm"

    .line 56
    .line 57
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v2, Lky9;

    .line 61
    .line 62
    invoke-direct {v2, p0}, Lky9;-><init>(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->i0()Lteam/opay/business/provider/active/AdItem;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_c

    .line 73
    .line 74
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getImageUrl()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v2}, Ldm;->a(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    const-string v3, "ivHeader"

    .line 83
    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v2, v2, Leb3;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 91
    .line 92
    new-instance v4, Lly9;

    .line 93
    .line 94
    invoke-direct {v4, p0}, Lly9;-><init>(Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iget-object v2, v2, Leb3;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 105
    .line 106
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getImageUrl()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getImageUrl()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v2, v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    iget-object v2, v2, Leb3;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iget-object v2, v2, Leb3;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 131
    .line 132
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v2}, Lg0g;->h(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getImageUrl()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-static {v2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-nez v2, :cond_1

    .line 148
    .line 149
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iget-object v2, v2, Leb3;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 154
    .line 155
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getImageUrl()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-static {v2, v4}, Lle7;->c(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    iget-object v2, v2, Leb3;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 170
    .line 171
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v2}, Lg0g;->h(Landroid/view/View;)V

    .line 175
    .line 176
    .line 177
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    iget-object v2, v2, Leb3;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 182
    .line 183
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getTitle()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    const-string v4, ""

    .line 188
    .line 189
    if-nez v3, :cond_2

    .line 190
    .line 191
    move-object v3, v4

    .line 192
    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getRichDesc()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    const/4 v3, 0x0

    .line 200
    if-eqz v2, :cond_5

    .line 201
    .line 202
    invoke-static {v2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-nez v5, :cond_3

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_3
    move-object v2, v3

    .line 210
    :goto_1
    if-nez v2, :cond_4

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_4
    move-object v4, v2

    .line 214
    goto :goto_3

    .line 215
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getDesc()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    if-nez v2, :cond_4

    .line 220
    .line 221
    :goto_3
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    iget-object v2, v2, Leb3;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 226
    .line 227
    const/4 v5, 0x0

    .line 228
    invoke-static {v4, v5}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->i0()Lteam/opay/business/provider/active/AdItem;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    if-eqz v2, :cond_6

    .line 240
    .line 241
    invoke-virtual {v2}, Lteam/opay/business/provider/active/AdItem;->getButtonCancelTitle()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    goto :goto_4

    .line 246
    :cond_6
    move-object v2, v3

    .line 247
    :goto_4
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->i0()Lteam/opay/business/provider/active/AdItem;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    if-eqz v4, :cond_7

    .line 252
    .line 253
    invoke-virtual {v4}, Lteam/opay/business/provider/active/AdItem;->getButtonConfirmTitle()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    :cond_7
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    iget-object v4, v4, Leb3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 262
    .line 263
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    iget-object v4, v4, Leb3;->d:Lcom/google/android/material/button/MaterialButton;

    .line 271
    .line 272
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    iget-object v4, v4, Leb3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 280
    .line 281
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const/4 v0, 0x1

    .line 285
    if-eqz v2, :cond_9

    .line 286
    .line 287
    invoke-static {v2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_8

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_8
    const/4 v2, 0x0

    .line 295
    goto :goto_6

    .line 296
    :cond_9
    :goto_5
    const/4 v2, 0x1

    .line 297
    :goto_6
    xor-int/2addr v2, v0

    .line 298
    invoke-static {v4, v2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    iget-object v2, v2, Leb3;->d:Lcom/google/android/material/button/MaterialButton;

    .line 306
    .line 307
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    if-eqz v3, :cond_a

    .line 311
    .line 312
    invoke-static {v3}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-eqz v1, :cond_b

    .line 317
    .line 318
    :cond_a
    const/4 v5, 0x1

    .line 319
    :cond_b
    xor-int/lit8 v1, v5, 0x1

    .line 320
    .line 321
    invoke-static {v2, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/NoticeDialogFragment;->o0()Leb3;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    iget-object v1, v1, Leb3;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 329
    .line 330
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getCloseIconPosition()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    const-string p2, "none"

    .line 338
    .line 339
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    xor-int/2addr p1, v0

    .line 344
    invoke-static {v1, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 345
    .line 346
    .line 347
    :cond_c
    return-void
.end method
