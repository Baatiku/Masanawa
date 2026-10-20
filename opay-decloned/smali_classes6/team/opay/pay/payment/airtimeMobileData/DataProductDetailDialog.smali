.class public final Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;
.super Lteam/opay/core/base/BaseDialogFragmentV2;
.source "DataProductDetailDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseDialogFragmentV2<",
        "Lqa3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR0\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u0019\u001a\u0004\u0018\u00010\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lqa3;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/api/BundleInfo;",
        "j",
        "Lkotlin/jvm/functions/Function1;",
        "getOnBuyClick",
        "()Lkotlin/jvm/functions/Function1;",
        "T",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onBuyClick",
        "k",
        "Lid8;",
        "Q",
        "()Lteam/opay/pay/api/BundleInfo;",
        "bundleInfo",
        "l",
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
.field public static final l:Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public j:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/api/BundleInfo;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->l:Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog$1;->INSTANCE:Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseDialogFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, La23;

    .line 7
    .line 8
    invoke-direct {v0, p0}, La23;-><init>(Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->k:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic M(Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->R(Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;)Lteam/opay/pay/api/BundleInfo;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->P(Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;)Lteam/opay/pay/api/BundleInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->S(Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final P(Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;)Lteam/opay/pay/api/BundleInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string v1, "keyName"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p0, v0

    .line 16
    :goto_0
    instance-of v1, p0, Lteam/opay/pay/api/BundleInfo;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    check-cast v0, Lteam/opay/pay/api/BundleInfo;

    .line 22
    .line 23
    :cond_1
    return-object v0
.end method

.method public static final R(Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->Q()Lteam/opay/pay/api/BundleInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->j:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final Q()Lteam/opay/pay/api/BundleInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/api/BundleInfo;

    .line 8
    .line 9
    return-object v0
.end method

.method public final T(Lkotlin/jvm/functions/Function1;)V
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
            "Lteam/opay/pay/api/BundleInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->j:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "view"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->Q()Lteam/opay/pay/api/BundleInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lqa3;

    .line 26
    .line 27
    iget-object p1, p1, Lqa3;->c:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/bumptech/glide/a;->v(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->Q()Lteam/opay/pay/api/BundleInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p2}, Lteam/opay/pay/api/BundleInfo;->getProductImg()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object p2, v2

    .line 46
    :goto_0
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance p2, Lcom/bumptech/glide/load/MultiTransformation;

    .line 51
    .line 52
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    .line 53
    .line 54
    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    .line 58
    .line 59
    const/high16 v5, 0x41400000    # 12.0f

    .line 60
    .line 61
    invoke-static {v5}, Ljmf;->c(F)F

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    float-to-int v5, v5

    .line 66
    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 67
    .line 68
    .line 69
    const/4 v5, 0x2

    .line 70
    new-array v5, v5, [Locf;

    .line 71
    .line 72
    aput-object v3, v5, v1

    .line 73
    .line 74
    aput-object v4, v5, v0

    .line 75
    .line 76
    invoke-direct {p2, v5}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Locf;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->l0(Locf;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Ljpc;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->j0(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Ljpc;

    .line 90
    .line 91
    sget p2, Lteam/opay/pay/R$mipmap;->osdk_data_product_default:I

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Ljpc;

    .line 98
    .line 99
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Lqa3;

    .line 104
    .line 105
    iget-object p2, p2, Lqa3;->c:Landroid/widget/ImageView;

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lqa3;

    .line 115
    .line 116
    iget-object p1, p1, Lqa3;->j:Landroid/widget/TextView;

    .line 117
    .line 118
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->Q()Lteam/opay/pay/api/BundleInfo;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    if-eqz p2, :cond_2

    .line 123
    .line 124
    invoke-virtual {p2}, Lteam/opay/pay/api/BundleInfo;->getLabel()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    goto :goto_1

    .line 129
    :cond_2
    move-object p2, v2

    .line 130
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Lqa3;

    .line 138
    .line 139
    iget-object p1, p1, Lqa3;->e:Landroid/widget/TextView;

    .line 140
    .line 141
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->Q()Lteam/opay/pay/api/BundleInfo;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    if-eqz p2, :cond_3

    .line 146
    .line 147
    invoke-virtual {p2}, Lteam/opay/pay/api/BundleInfo;->getProductDetail()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    goto :goto_2

    .line 152
    :cond_3
    move-object p2, v2

    .line 153
    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->Q()Lteam/opay/pay/api/BundleInfo;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_4

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Lteam/opay/pay/api/BundleInfo;->getPayAmount(Z)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    if-eqz v3, :cond_4

    .line 167
    .line 168
    const/4 v7, 0x4

    .line 169
    const/4 v8, 0x0

    .line 170
    const-string v4, ".00"

    .line 171
    .line 172
    const-string v5, ""

    .line 173
    .line 174
    const/4 v6, 0x0

    .line 175
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    goto :goto_3

    .line 180
    :cond_4
    move-object p1, v2

    .line 181
    :goto_3
    if-nez p1, :cond_5

    .line 182
    .line 183
    const-string p1, ""

    .line 184
    .line 185
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    if-lez p2, :cond_6

    .line 190
    .line 191
    new-instance p2, Landroid/text/SpannableString;

    .line 192
    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string/jumbo v4, "\u20a6"

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    .line 215
    .line 216
    const v3, 0x3f2b851f    # 0.67f

    .line 217
    .line 218
    .line 219
    invoke-direct {p1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 220
    .line 221
    .line 222
    const/16 v3, 0x21

    .line 223
    .line 224
    invoke-virtual {p2, p1, v1, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    check-cast p1, Lqa3;

    .line 232
    .line 233
    iget-object p1, p1, Lqa3;->i:Landroid/widget/TextView;

    .line 234
    .line 235
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->Q()Lteam/opay/pay/api/BundleInfo;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    if-eqz p1, :cond_7

    .line 243
    .line 244
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getActivitePrice()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    goto :goto_4

    .line 249
    :cond_7
    move-object p1, v2

    .line 250
    :goto_4
    if-eqz p1, :cond_9

    .line 251
    .line 252
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    if-nez p1, :cond_8

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_8
    const/4 p1, 0x0

    .line 260
    goto :goto_6

    .line 261
    :cond_9
    :goto_5
    const/4 p1, 0x1

    .line 262
    :goto_6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    check-cast p2, Lqa3;

    .line 267
    .line 268
    iget-object p2, p2, Lqa3;->g:Landroid/widget/TextView;

    .line 269
    .line 270
    const-string v3, "tvOldPriceValue"

    .line 271
    .line 272
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    const/16 v3, 0x8

    .line 276
    .line 277
    if-nez p1, :cond_a

    .line 278
    .line 279
    const/4 v4, 0x0

    .line 280
    goto :goto_7

    .line 281
    :cond_a
    const/16 v4, 0x8

    .line 282
    .line 283
    :goto_7
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .line 285
    .line 286
    if-nez p1, :cond_d

    .line 287
    .line 288
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    check-cast p2, Lqa3;

    .line 293
    .line 294
    iget-object p2, p2, Lqa3;->g:Landroid/widget/TextView;

    .line 295
    .line 296
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    check-cast v4, Lqa3;

    .line 301
    .line 302
    iget-object v4, v4, Lqa3;->g:Landroid/widget/TextView;

    .line 303
    .line 304
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    or-int/lit8 v4, v4, 0x10

    .line 309
    .line 310
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    check-cast p2, Lqa3;

    .line 318
    .line 319
    iget-object p2, p2, Lqa3;->g:Landroid/widget/TextView;

    .line 320
    .line 321
    sget-object v4, Lbd9;->a:Lbd9;

    .line 322
    .line 323
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->Q()Lteam/opay/pay/api/BundleInfo;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    if-eqz v5, :cond_b

    .line 328
    .line 329
    invoke-virtual {v5}, Lteam/opay/pay/api/BundleInfo;->getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    if-eqz v5, :cond_b

    .line 334
    .line 335
    invoke-virtual {v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    if-nez v5, :cond_c

    .line 340
    .line 341
    :cond_b
    const-string v5, "0"

    .line 342
    .line 343
    :cond_c
    sget-object v6, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 344
    .line 345
    const/4 v8, 0x4

    .line 346
    const/4 v9, 0x0

    .line 347
    const/4 v7, 0x0

    .line 348
    invoke-static/range {v4 .. v9}, Lbd9;->q(Lbd9;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    .line 354
    .line 355
    :cond_d
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 356
    .line 357
    .line 358
    move-result-object p2

    .line 359
    check-cast p2, Lqa3;

    .line 360
    .line 361
    iget-object p2, p2, Lqa3;->s:Landroid/view/View;

    .line 362
    .line 363
    const-string v4, "vVoucher"

    .line 364
    .line 365
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    if-nez p1, :cond_e

    .line 369
    .line 370
    const/4 p1, 0x0

    .line 371
    goto :goto_8

    .line 372
    :cond_e
    const/16 p1, 0x8

    .line 373
    .line 374
    :goto_8
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    check-cast p1, Lqa3;

    .line 382
    .line 383
    iget-object p1, p1, Lqa3;->l:Landroid/widget/TextView;

    .line 384
    .line 385
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->Q()Lteam/opay/pay/api/BundleInfo;

    .line 386
    .line 387
    .line 388
    move-result-object p2

    .line 389
    if-eqz p2, :cond_f

    .line 390
    .line 391
    invoke-virtual {p2}, Lteam/opay/pay/api/BundleInfo;->getSubTitle()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p2

    .line 395
    goto :goto_9

    .line 396
    :cond_f
    move-object p2, v2

    .line 397
    :goto_9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->Q()Lteam/opay/pay/api/BundleInfo;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    if-eqz p1, :cond_10

    .line 405
    .line 406
    invoke-virtual {p1}, Lteam/opay/pay/api/BundleInfo;->getCashBackAmount()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    if-eqz p1, :cond_10

    .line 411
    .line 412
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 413
    .line 414
    .line 415
    move-result p1

    .line 416
    if-nez p1, :cond_10

    .line 417
    .line 418
    goto :goto_a

    .line 419
    :cond_10
    const/4 v0, 0x0

    .line 420
    :goto_a
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    check-cast p1, Lqa3;

    .line 425
    .line 426
    iget-object p1, p1, Lqa3;->f:Landroid/widget/TextView;

    .line 427
    .line 428
    const-string p2, "tvEarnMoney"

    .line 429
    .line 430
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    if-nez v0, :cond_11

    .line 434
    .line 435
    goto :goto_b

    .line 436
    :cond_11
    const/16 v1, 0x8

    .line 437
    .line 438
    :goto_b
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    check-cast p1, Lqa3;

    .line 446
    .line 447
    iget-object p1, p1, Lqa3;->f:Landroid/widget/TextView;

    .line 448
    .line 449
    invoke-virtual {p0}, Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;->Q()Lteam/opay/pay/api/BundleInfo;

    .line 450
    .line 451
    .line 452
    move-result-object p2

    .line 453
    if-eqz p2, :cond_12

    .line 454
    .line 455
    invoke-virtual {p2}, Lteam/opay/pay/api/BundleInfo;->getCashBackAmount()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    :cond_12
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    check-cast p1, Lqa3;

    .line 467
    .line 468
    iget-object p1, p1, Lqa3;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 469
    .line 470
    const-string p2, "ivClose"

    .line 471
    .line 472
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    new-instance p2, Ly13;

    .line 476
    .line 477
    invoke-direct {p2, p0}, Ly13;-><init>(Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;)V

    .line 478
    .line 479
    .line 480
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    check-cast p1, Lqa3;

    .line 488
    .line 489
    iget-object p1, p1, Lqa3;->p:Landroid/view/View;

    .line 490
    .line 491
    const-string p2, "vPayBtn"

    .line 492
    .line 493
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    new-instance p2, Lz13;

    .line 497
    .line 498
    invoke-direct {p2, p0}, Lz13;-><init>(Lteam/opay/pay/payment/airtimeMobileData/DataProductDetailDialog;)V

    .line 499
    .line 500
    .line 501
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 502
    .line 503
    .line 504
    return-void
.end method
