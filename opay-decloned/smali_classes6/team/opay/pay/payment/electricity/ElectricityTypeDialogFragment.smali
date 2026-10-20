.class public final Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;
.super Lteam/opay/pay/payment/electricity/Hilt_ElectricityTypeDialogFragment;
.source "ElectricityTypeDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/payment/electricity/Hilt_ElectricityTypeDialogFragment<",
        "Lji6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0007\u0018\u0000 /2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00010B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eR(\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R$\u0010\u001e\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR0\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010.\u001a\u00020\'8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;",
        "Lteam/opay/core/base/BaseSheetInjectFragmentV2;",
        "Lji6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "G",
        "()I",
        "",
        "Lteam/opay/pay/payment/electricity/ElectricityProviderV3;",
        "q",
        "Ljava/util/List;",
        "S",
        "()Ljava/util/List;",
        "X",
        "(Ljava/util/List;)V",
        "mDataList",
        "r",
        "Lteam/opay/pay/payment/electricity/ElectricityProviderV3;",
        "getSelectProvider",
        "()Lteam/opay/pay/payment/electricity/ElectricityProviderV3;",
        "Y",
        "(Lteam/opay/pay/payment/electricity/ElectricityProviderV3;)V",
        "selectProvider",
        "Lkotlin/Function1;",
        "s",
        "Lkotlin/jvm/functions/Function1;",
        "getItemSelectCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "W",
        "(Lkotlin/jvm/functions/Function1;)V",
        "itemSelectCallback",
        "",
        "t",
        "Z",
        "I",
        "()Z",
        "setSupportBgTransparent",
        "(Z)V",
        "supportBgTransparent",
        "u",
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
.field public static final u:Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/electricity/ElectricityProviderV3;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lteam/opay/pay/payment/electricity/ElectricityProviderV3;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/payment/electricity/ElectricityProviderV3;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->u:Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$1;->INSTANCE:Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/payment/electricity/Hilt_ElectricityTypeDialogFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->q:Ljava/util/List;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->t:Z

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->T(Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;Lteam/opay/pay/payment/electricity/ElectricityProviderV3;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->V(Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;Lteam/opay/pay/payment/electricity/ElectricityProviderV3;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->U(Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lji6;

    .line 6
    .line 7
    iget-object p0, p0, Lji6;->g:Llef;

    .line 8
    .line 9
    iget-object p0, p0, Llef;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final U(Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;Lteam/opay/pay/payment/electricity/ElectricityProviderV3;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->s:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public G()I
    .locals 2

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
    invoke-static {v0}, Ljmf;->q(Landroid/content/Context;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/high16 v1, 0x3f400000    # 0.75f

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljmf;->x(IF)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public final S()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/electricity/ElectricityProviderV3;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->q:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/payment/electricity/ElectricityProviderV3;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->s:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final X(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/electricity/ElectricityProviderV3;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->q:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final Y(Lteam/opay/pay/payment/electricity/ElectricityProviderV3;)V
    .locals 0
    .param p1    # Lteam/opay/pay/payment/electricity/ElectricityProviderV3;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->r:Lteam/opay/pay/payment/electricity/ElectricityProviderV3;

    .line 2
    .line 3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lteam/opay/pay/payment/electricity/ElectricityTypeAdapter;

    .line 10
    .line 11
    invoke-direct {p1}, Lteam/opay/pay/payment/electricity/ElectricityTypeAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lji6;

    .line 19
    .line 20
    iget-object p2, p2, Lji6;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    sget v0, Lteam/opay/pay/R$string;->osdk_electricity_payment_type_dialog_title:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lji6;

    .line 36
    .line 37
    iget-object p2, p2, Lji6;->g:Llef;

    .line 38
    .line 39
    iget-object p2, p2, Llef;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 40
    .line 41
    sget v0, Lteam/opay/pay/R$string;->service_provider_company_et_hint:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lji6;

    .line 55
    .line 56
    iget-object p2, p2, Lji6;->g:Llef;

    .line 57
    .line 58
    iget-object p2, p2, Llef;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 59
    .line 60
    const-string v0, "searchEdit"

    .line 61
    .line 62
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$onViewCreated$$inlined$doOnTextChanged$1;

    .line 66
    .line 67
    invoke-direct {v0, p0, p1}, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment$onViewCreated$$inlined$doOnTextChanged$1;-><init>(Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;Lteam/opay/pay/payment/electricity/ElectricityTypeAdapter;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Lji6;

    .line 78
    .line 79
    iget-object p2, p2, Lji6;->g:Llef;

    .line 80
    .line 81
    iget-object p2, p2, Llef;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 82
    .line 83
    const-string v0, "icClose"

    .line 84
    .line 85
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lyh5;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lyh5;-><init>(Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p2, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Lji6;

    .line 101
    .line 102
    iget-object p2, p2, Lji6;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 103
    .line 104
    const-string v0, "close"

    .line 105
    .line 106
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Lzh5;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Lzh5;-><init>(Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p2, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Lji6;

    .line 122
    .line 123
    iget-object p2, p2, Lji6;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    .line 125
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->r:Lteam/opay/pay/payment/electricity/ElectricityProviderV3;

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/electricity/ElectricityTypeAdapter;->r(Lteam/opay/pay/payment/electricity/ElectricityProviderV3;)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Lai5;

    .line 134
    .line 135
    invoke-direct {v0, p0}, Lai5;-><init>(Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/electricity/ElectricityTypeAdapter;->q(Lkotlin/jvm/functions/Function1;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityTypeDialogFragment;->q:Ljava/util/List;

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 147
    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method
