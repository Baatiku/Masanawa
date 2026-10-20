.class public final Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;
.super Lteam/opay/pay/account/verify/VerifyFaceFragment;
.source "VerifyFaceV2Fragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/verify/VerifyFaceV2Fragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u0000 \r2\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000c\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;",
        "Lteam/opay/pay/account/verify/VerifyFaceFragment;",
        "<init>",
        "()V",
        "",
        "initView",
        "",
        "q1",
        "()Ljava/lang/String;",
        "H",
        "Lid8;",
        "p1",
        "firstName",
        "I",
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
.field public static final I:Lteam/opay/pay/account/verify/VerifyFaceV2Fragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final H:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/VerifyFaceV2Fragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/account/verify/VerifyFaceV2Fragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;->I:Lteam/opay/pay/account/verify/VerifyFaceV2Fragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/account/verify/VerifyFaceFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lwpf;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lwpf;-><init>(Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;->H:Lid8;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic m1(Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;->o1(Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n1(Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;->r1(Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final o1(Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;->q1()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final r1(Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->N()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lgj6;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;->p1()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Lgj6;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    const-string v2, "firstNameTv"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lgj6;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;->p1()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, v0, Lgj6;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v0, 0xfa

    .line 44
    .line 45
    invoke-static {p0, v0, v1}, Lxie;->a(Landroid/widget/TextView;J)V

    .line 46
    .line 47
    .line 48
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method


# virtual methods
.method public initView()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lgj6;

    .line 6
    .line 7
    iget-object v0, v0, Lgj6;->e:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 19
    .line 20
    const/16 v2, -0x14

    .line 21
    .line 22
    invoke-static {v2}, Ljmf;->d(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 28
    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    iput-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:Ljava/lang/String;

    .line 33
    .line 34
    const/4 v2, -0x2

    .line 35
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/ImageLottieView;->l()V

    .line 41
    .line 42
    .line 43
    const-string v1, "lottie/face/osdk_face_guide.lottie"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "getViewLifecycleOwner(...)"

    .line 56
    .line 57
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v2, Lxpf;

    .line 61
    .line 62
    invoke-direct {v2, p0}, Lxpf;-><init>(Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v4, 0xbb8

    .line 66
    .line 67
    invoke-static {v0, v1, v4, v5, v2}, Lteam/opay/core/android/ViewKt;->j(Lcom/airbnb/lottie/LottieAnimationView;Lag8;JLkotlin/jvm/functions/Function0;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;->p1()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-lez v0, :cond_0

    .line 79
    .line 80
    sget v0, Lteam/opay/pay/R$string;->osdk_verify_face_tips_desc_v2:I

    .line 81
    .line 82
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;->p1()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const/4 v2, 0x1

    .line 87
    new-array v2, v2, [Ljava/lang/Object;

    .line 88
    .line 89
    aput-object v1, v2, v3

    .line 90
    .line 91
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    sget v0, Lteam/opay/pay/R$string;->osdk_verify_face_tips_desc:I

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lgj6;

    .line 110
    .line 111
    iget-object v1, v1, Lgj6;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final p1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyFaceV2Fragment;->H:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final q1()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/BaseVerifyFragment;->c0()Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValStepInfos()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const-string v3, ""

    .line 33
    .line 34
    if-eqz v2, :cond_8

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lteam/opay/pay/account/verify/VerifyPoolItem;

    .line 41
    .line 42
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyPoolItem;->getValTypesExtraTypes()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_5

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_4

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    move-object v5, v4

    .line 63
    check-cast v5, Lteam/opay/pay/account/verify/ValTypesExtraTypes;

    .line 64
    .line 65
    invoke-virtual {v5}, Lteam/opay/pay/account/verify/ValTypesExtraTypes;->getValidationType()Lteam/opay/pay/account/verify/ValidationType;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    sget-object v6, Lteam/opay/pay/account/verify/ValidationType;->FACE:Lteam/opay/pay/account/verify/ValidationType;

    .line 70
    .line 71
    if-ne v5, v6, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    move-object v4, v1

    .line 75
    :goto_1
    check-cast v4, Lteam/opay/pay/account/verify/ValTypesExtraTypes;

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    move-object v4, v1

    .line 79
    :goto_2
    if-eqz v4, :cond_2

    .line 80
    .line 81
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/ValTypesExtraTypes;->getValTypesExtraMap()Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    const-string v1, "firstName"

    .line 88
    .line 89
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    move-object v1, v0

    .line 94
    check-cast v1, Ljava/lang/String;

    .line 95
    .line 96
    :cond_6
    if-nez v1, :cond_7

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_7
    move-object v3, v1

    .line 100
    :cond_8
    :goto_3
    return-object v3
.end method
