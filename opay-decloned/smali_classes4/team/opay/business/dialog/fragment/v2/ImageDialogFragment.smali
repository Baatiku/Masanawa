.class public final Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;
.super Lteam/opay/business/dialog/fragment/BizDialogFragment2;
.source "ImageDialogFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;",
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
        "Lya3;",
        "u",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "o0",
        "()Lya3;",
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
    const-string v1, "getBinding()Lteam/opay/business/dialog/databinding/DialogFragmentImageDialogBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;

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
    sput-object v1, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->v:[Lzo7;

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
    const-class v1, Lya3;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->u:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic k0(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->q0(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l0(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->p0(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->r0(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n0(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->s0(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final p0(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final q0(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->i0()Lteam/opay/business/provider/active/AdItem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/business/provider/active/AdItem;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->e0(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final r0(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;)Lkotlin/Unit;
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

.method public static final s0(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;)Lkotlin/Unit;
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


# virtual methods
.method public final o0()Lya3;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->u:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->v:[Lzo7;

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
    check-cast v0, Lya3;

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
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->o0()Lya3;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lya3;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

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

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
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
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->i0()Lteam/opay/business/provider/active/AdItem;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getImageUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, p2

    .line 24
    :goto_0
    invoke-static {p1}, Ldm;->a(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const-string v0, "return number type not support"

    .line 29
    .line 30
    const-class v1, Ljava/lang/Integer;

    .line 31
    .line 32
    const/16 v2, 0x10

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->o0()Lya3;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Lya3;->d:Lcom/airbnb/lottie/LottieAnimationView;

    .line 41
    .line 42
    new-instance v3, Lzc7;

    .line 43
    .line 44
    invoke-direct {v3, p0}, Lzc7;-><init>(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->o0()Lya3;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Lya3;->d:Lcom/airbnb/lottie/LottieAnimationView;

    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->i0()Lteam/opay/business/provider/active/AdItem;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    invoke-virtual {v3}, Lteam/opay/business/provider/active/AdItem;->getImageUrl()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move-object v3, p2

    .line 68
    :goto_1
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->i0()Lteam/opay/business/provider/active/AdItem;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    invoke-virtual {v4}, Lteam/opay/business/provider/active/AdItem;->getImageUrl()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move-object v4, p2

    .line 80
    :goto_2
    invoke-virtual {p1, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->o0()Lya3;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p1, p1, Lya3;->d:Lcom/airbnb/lottie/LottieAnimationView;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_3
    invoke-static {p0}, Lcom/bumptech/glide/a;->w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->i0()Lteam/opay/business/provider/active/AdItem;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    invoke-virtual {v3}, Lteam/opay/business/provider/active/AdItem;->getImgUrl()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    goto :goto_3

    .line 109
    :cond_4
    move-object v3, p2

    .line 110
    :goto_3
    invoke-virtual {p1, v3}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v3, Lcom/bumptech/glide/request/RequestOptions;

    .line 115
    .line 116
    invoke-direct {v3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    .line 120
    .line 121
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 130
    .line 131
    int-to-float v6, v2

    .line 132
    mul-float v5, v5, v6

    .line 133
    .line 134
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 143
    .line 144
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_5

    .line 153
    .line 154
    check-cast v5, Ljava/lang/Integer;

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_5
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 158
    .line 159
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-eqz v7, :cond_6

    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    goto :goto_4

    .line 178
    :cond_6
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 179
    .line 180
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eqz v7, :cond_7

    .line 189
    .line 190
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    .line 191
    .line 192
    .line 193
    move-result-wide v5

    .line 194
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    check-cast v5, Ljava/lang/Integer;

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_7
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 202
    .line 203
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-eqz v6, :cond_13

    .line 212
    .line 213
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 214
    .line 215
    .line 216
    move-result-wide v5

    .line 217
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Ljava/lang/Integer;

    .line 222
    .line 223
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->l0(Locf;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    check-cast v3, Lcom/bumptech/glide/request/RequestOptions;

    .line 235
    .line 236
    invoke-virtual {v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->p()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {p1, v3}, Ljpc;->t0(Lcom/bumptech/glide/request/BaseRequestOptions;)Ljpc;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->o0()Lya3;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    iget-object v3, v3, Lya3;->d:Lcom/airbnb/lottie/LottieAnimationView;

    .line 249
    .line 250
    invoke-virtual {p1, v3}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :goto_5
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment2;->i0()Lteam/opay/business/provider/active/AdItem;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    if-eqz p1, :cond_8

    .line 262
    .line 263
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getCloseIconPosition()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    :cond_8
    const-string p1, "actionBottomClose"

    .line 268
    .line 269
    const-string v3, "actionClose"

    .line 270
    .line 271
    if-eqz p2, :cond_12

    .line 272
    .line 273
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    const v5, -0x325c94ed

    .line 278
    .line 279
    .line 280
    if-eq v4, v5, :cond_c

    .line 281
    .line 282
    const v0, 0x62ff1b53

    .line 283
    .line 284
    .line 285
    if-eq v4, v0, :cond_b

    .line 286
    .line 287
    const v0, 0x7545917c

    .line 288
    .line 289
    .line 290
    if-eq v4, v0, :cond_9

    .line 291
    .line 292
    goto/16 :goto_7

    .line 293
    .line 294
    :cond_9
    const-string v0, "outside-top-right"

    .line 295
    .line 296
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result p2

    .line 300
    if-nez p2, :cond_a

    .line 301
    .line 302
    goto/16 :goto_7

    .line 303
    .line 304
    :cond_a
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->o0()Lya3;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    iget-object p2, p2, Lya3;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 309
    .line 310
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-static {p2}, Lg0g;->h(Landroid/view/View;)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_8

    .line 317
    .line 318
    :cond_b
    const-string v0, "outside-bottom"

    .line 319
    .line 320
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result p2

    .line 324
    if-eqz p2, :cond_12

    .line 325
    .line 326
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->o0()Lya3;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    iget-object p2, p2, Lya3;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 331
    .line 332
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-static {p2}, Lg0g;->h(Landroid/view/View;)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_8

    .line 339
    .line 340
    :cond_c
    const-string v4, "inside-top-right"

    .line 341
    .line 342
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result p2

    .line 346
    if-nez p2, :cond_d

    .line 347
    .line 348
    goto/16 :goto_7

    .line 349
    .line 350
    :cond_d
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 351
    .line 352
    invoke-direct {p2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->o0()Lya3;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    invoke-virtual {v4}, Lya3;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {p2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 364
    .line 365
    .line 366
    sget v4, Lteam/opay/business/dialog/R$id;->imageview:I

    .line 367
    .line 368
    sget v5, Lteam/opay/business/dialog/R$id;->actionClose:I

    .line 369
    .line 370
    const/4 v6, 0x3

    .line 371
    invoke-virtual {p2, v4, v6, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->t(IIII)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->o0()Lya3;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    invoke-virtual {v4}, Lya3;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    invoke-virtual {p2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->o0()Lya3;

    .line 386
    .line 387
    .line 388
    move-result-object p2

    .line 389
    iget-object p2, p2, Lya3;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 390
    .line 391
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 403
    .line 404
    int-to-float v2, v2

    .line 405
    mul-float v4, v4, v2

    .line 406
    .line 407
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 416
    .line 417
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    if-eqz v4, :cond_e

    .line 426
    .line 427
    check-cast v2, Ljava/lang/Integer;

    .line 428
    .line 429
    goto :goto_6

    .line 430
    :cond_e
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 431
    .line 432
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    if-eqz v4, :cond_f

    .line 441
    .line 442
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    goto :goto_6

    .line 451
    :cond_f
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 452
    .line 453
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    if-eqz v4, :cond_10

    .line 462
    .line 463
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 464
    .line 465
    .line 466
    move-result-wide v0

    .line 467
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    move-object v2, v0

    .line 472
    check-cast v2, Ljava/lang/Integer;

    .line 473
    .line 474
    goto :goto_6

    .line 475
    :cond_10
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 476
    .line 477
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    if-eqz v1, :cond_11

    .line 486
    .line 487
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 488
    .line 489
    .line 490
    move-result-wide v0

    .line 491
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    move-object v2, v0

    .line 496
    check-cast v2, Ljava/lang/Integer;

    .line 497
    .line 498
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->o0()Lya3;

    .line 506
    .line 507
    .line 508
    move-result-object p2

    .line 509
    iget-object p2, p2, Lya3;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 510
    .line 511
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    invoke-static {p2}, Lg0g;->h(Landroid/view/View;)V

    .line 515
    .line 516
    .line 517
    goto :goto_8

    .line 518
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 519
    .line 520
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw p1

    .line 524
    :cond_12
    :goto_7
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->o0()Lya3;

    .line 525
    .line 526
    .line 527
    move-result-object p2

    .line 528
    iget-object p2, p2, Lya3;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 529
    .line 530
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-static {p2}, Lg0g;->d(Landroid/view/View;)V

    .line 534
    .line 535
    .line 536
    :goto_8
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->o0()Lya3;

    .line 537
    .line 538
    .line 539
    move-result-object p2

    .line 540
    iget-object p2, p2, Lya3;->d:Lcom/airbnb/lottie/LottieAnimationView;

    .line 541
    .line 542
    const-string v0, "imageview"

    .line 543
    .line 544
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    new-instance v0, Lad7;

    .line 548
    .line 549
    invoke-direct {v0, p0}, Lad7;-><init>(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;)V

    .line 550
    .line 551
    .line 552
    invoke-static {p2, v0}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->o0()Lya3;

    .line 556
    .line 557
    .line 558
    move-result-object p2

    .line 559
    iget-object p2, p2, Lya3;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 560
    .line 561
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    new-instance v0, Lbd7;

    .line 565
    .line 566
    invoke-direct {v0, p0}, Lbd7;-><init>(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;)V

    .line 567
    .line 568
    .line 569
    invoke-static {p2, v0}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;->o0()Lya3;

    .line 573
    .line 574
    .line 575
    move-result-object p2

    .line 576
    iget-object p2, p2, Lya3;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 577
    .line 578
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    new-instance p1, Lcd7;

    .line 582
    .line 583
    invoke-direct {p1, p0}, Lcd7;-><init>(Lteam/opay/business/dialog/fragment/v2/ImageDialogFragment;)V

    .line 584
    .line 585
    .line 586
    invoke-static {p2, p1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 587
    .line 588
    .line 589
    return-void

    .line 590
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 591
    .line 592
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    throw p1
.end method
