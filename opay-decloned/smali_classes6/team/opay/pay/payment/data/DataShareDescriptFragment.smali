.class public final Lteam/opay/pay/payment/data/DataShareDescriptFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "DataShareDescriptFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/data/DataShareDescriptFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Lnya;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001d\u0010\u0011\u001a\u0004\u0018\u00010\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/payment/data/DataShareDescriptFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lnya;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/payment/data/DataMarketingProduct;",
        "j",
        "Lid8;",
        "P",
        "()Lteam/opay/pay/payment/data/DataMarketingProduct;",
        "product",
        "k",
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
.field public static final k:Lteam/opay/pay/payment/data/DataShareDescriptFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/data/DataShareDescriptFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/data/DataShareDescriptFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/data/DataShareDescriptFragment;->k:Lteam/opay/pay/payment/data/DataShareDescriptFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/payment/data/DataShareDescriptFragment$1;->INSTANCE:Lteam/opay/pay/payment/data/DataShareDescriptFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lf23;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lf23;-><init>(Lteam/opay/pay/payment/data/DataShareDescriptFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/payment/data/DataShareDescriptFragment;->j:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/payment/data/DataShareDescriptFragment;)Lteam/opay/pay/payment/data/DataMarketingProduct;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/data/DataShareDescriptFragment;->Q(Lteam/opay/pay/payment/data/DataShareDescriptFragment;)Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final P()Lteam/opay/pay/payment/data/DataMarketingProduct;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/data/DataShareDescriptFragment;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final Q(Lteam/opay/pay/payment/data/DataShareDescriptFragment;)Lteam/opay/pay/payment/data/DataMarketingProduct;
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
    const-string v1, "key_share_data"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p0, v0

    .line 18
    :goto_0
    instance-of v1, p0, Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    :cond_1
    return-object v0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lnya;

    .line 14
    .line 15
    iget-object p1, p1, Lnya;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    invoke-direct {p0}, Lteam/opay/pay/payment/data/DataShareDescriptFragment;->P()Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2}, Lteam/opay/pay/payment/data/DataMarketingProduct;->getDiscountAmount()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p2, v0

    .line 30
    :goto_0
    const-string v1, ""

    .line 31
    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    move-object p2, v1

    .line 35
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lnya;

    .line 43
    .line 44
    iget-object p1, p1, Lnya;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    invoke-direct {p0}, Lteam/opay/pay/payment/data/DataShareDescriptFragment;->P()Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2}, Lteam/opay/pay/payment/data/DataMarketingProduct;->getOriginAmount()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-object p2, v0

    .line 58
    :goto_1
    if-nez p2, :cond_3

    .line 59
    .line 60
    move-object p2, v1

    .line 61
    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lnya;

    .line 69
    .line 70
    iget-object p1, p1, Lnya;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/16 p2, 0x10

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lnya;

    .line 86
    .line 87
    iget-object p1, p1, Lnya;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    invoke-direct {p0}, Lteam/opay/pay/payment/data/DataShareDescriptFragment;->P()Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-eqz p2, :cond_4

    .line 94
    .line 95
    invoke-virtual {p2}, Lteam/opay/pay/payment/data/DataMarketingProduct;->getProductName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    move-object p2, v0

    .line 101
    :goto_2
    if-nez p2, :cond_5

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    move-object v1, p2

    .line 105
    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lnya;

    .line 113
    .line 114
    iget-object p1, p1, Lnya;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    invoke-direct {p0}, Lteam/opay/pay/payment/data/DataShareDescriptFragment;->P()Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    if-eqz p2, :cond_6

    .line 121
    .line 122
    invoke-virtual {p2}, Lteam/opay/pay/payment/data/DataMarketingProduct;->getServiceType()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    :cond_6
    sget-object p2, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 127
    .line 128
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_7

    .line 137
    .line 138
    sget p2, Lteam/opay/pay/R$string;->activity_betting_page_label:I

    .line 139
    .line 140
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    goto :goto_4

    .line 145
    :cond_7
    sget-object p2, Lteam/opay/core/api/GraphQL$ServiceType;->AIRTIME:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 146
    .line 147
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-eqz p2, :cond_8

    .line 156
    .line 157
    sget p2, Lteam/opay/pay/R$string;->airtime:I

    .line 158
    .line 159
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    goto :goto_4

    .line 164
    :cond_8
    sget p2, Lteam/opay/pay/R$string;->osdk_mobile_data:I

    .line 165
    .line 166
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method
