.class public final Lteam/opay/core/card/CardTipsDialog;
.super Lteam/opay/core/base/BaseSheetInjectFragmentV2;
.source "CardTipsDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/card/CardTipsDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseSheetInjectFragmentV2<",
        "Llc6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \"2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001#B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ!\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0019\u001a\u00020\u00128\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R*\u0010!\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/core/card/CardTipsDialog;",
        "Lteam/opay/core/base/BaseSheetInjectFragmentV2;",
        "Llc6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroidx/fragment/app/FragmentManager;",
        "fm",
        "",
        "tag",
        "show",
        "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V",
        "",
        "l",
        "Z",
        "I",
        "()Z",
        "setSupportBgTransparent",
        "(Z)V",
        "supportBgTransparent",
        "Lkotlin/Function0;",
        "m",
        "Lkotlin/jvm/functions/Function0;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "U",
        "(Lkotlin/jvm/functions/Function0;)V",
        "callback",
        "n",
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
.field public static final n:Lteam/opay/core/card/CardTipsDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public l:Z

.field public m:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/card/CardTipsDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/card/CardTipsDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/card/CardTipsDialog;->n:Lteam/opay/core/card/CardTipsDialog$Companion;

    .line 8
    .line 9
    const-string v0, "key_data"

    .line 10
    .line 11
    sput-object v0, Lteam/opay/core/card/CardTipsDialog;->o:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/card/CardTipsDialog$1;->INSTANCE:Lteam/opay/core/card/CardTipsDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseSheetInjectFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/core/card/CardTipsDialog;->l:Z

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic P(Lteam/opay/core/card/CardTipsDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/card/CardTipsDialog;->S(Lteam/opay/core/card/CardTipsDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/core/card/CardTipsDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/card/CardTipsDialog;->T(Lteam/opay/core/card/CardTipsDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic R()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/card/CardTipsDialog;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final S(Lteam/opay/core/card/CardTipsDialog;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardTipsDialog;->m:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final T(Lteam/opay/core/card/CardTipsDialog;)Lkotlin/Unit;
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


# virtual methods
.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/card/CardTipsDialog;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public final U(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/CardTipsDialog;->m:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 p2, 0x21

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-lt p1, p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object p2, Lteam/opay/core/card/CardTipsDialog;->o:Ljava/lang/String;

    .line 21
    .line 22
    const-class v1, Lteam/opay/core/card/CardTipsDialogData;

    .line 23
    .line 24
    invoke-static {p1, p2, v1}, Lvx2;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lteam/opay/core/card/CardTipsDialogData;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object p2, Lteam/opay/core/card/CardTipsDialog;->o:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    instance-of p2, p1, Lteam/opay/core/card/CardTipsDialogData;

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    check-cast p1, Lteam/opay/core/card/CardTipsDialogData;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object p1, v0

    .line 49
    :goto_0
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Lteam/opay/core/card/CardTipsDialogData;->getTopIC()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Llc6;

    .line 60
    .line 61
    iget-object v1, v1, Llc6;->d:Landroid/widget/ImageView;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2, p2}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Llc6;

    .line 79
    .line 80
    iget-object p2, p2, Llc6;->f:Landroid/widget/TextView;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    invoke-virtual {p1}, Lteam/opay/core/card/CardTipsDialogData;->getTitle()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move-object v1, v0

    .line 90
    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    check-cast p2, Llc6;

    .line 98
    .line 99
    iget-object p2, p2, Llc6;->e:Landroid/widget/TextView;

    .line 100
    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    invoke-virtual {p1}, Lteam/opay/core/card/CardTipsDialogData;->getContent()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move-object v1, v0

    .line 109
    :goto_2
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    check-cast p2, Llc6;

    .line 121
    .line 122
    iget-object p2, p2, Llc6;->b:Lcom/google/android/material/button/MaterialButton;

    .line 123
    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    invoke-virtual {p1}, Lteam/opay/core/card/CardTipsDialogData;->getButton()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :cond_5
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Llc6;

    .line 138
    .line 139
    iget-object p1, p1, Llc6;->b:Lcom/google/android/material/button/MaterialButton;

    .line 140
    .line 141
    const-string p2, "button"

    .line 142
    .line 143
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance p2, Lg02;

    .line 147
    .line 148
    invoke-direct {p2, p0}, Lg02;-><init>(Lteam/opay/core/card/CardTipsDialog;)V

    .line 149
    .line 150
    .line 151
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Llc6;

    .line 159
    .line 160
    iget-object p1, p1, Llc6;->c:Landroid/widget/ImageView;

    .line 161
    .line 162
    const-string p2, "close"

    .line 163
    .line 164
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    new-instance p2, Lh02;

    .line 168
    .line 169
    invoke-direct {p2, p0}, Lh02;-><init>(Lteam/opay/core/card/CardTipsDialog;)V

    .line 170
    .line 171
    .line 172
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "fm"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->z0()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getFragments(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    move-object v2, v1

    .line 30
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    instance-of v2, v2, Lteam/opay/core/card/CardTipsDialog;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    :goto_0
    if-nez v1, :cond_2

    .line 39
    .line 40
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseSheetFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method
