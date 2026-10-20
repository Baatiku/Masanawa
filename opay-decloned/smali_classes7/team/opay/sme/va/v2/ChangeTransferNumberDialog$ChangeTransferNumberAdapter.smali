.class public final Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChangeTransferNumberDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChangeTransferNumberAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/core/common/internal/BindingViewHolder<",
        "Lfyd;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0086\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B5\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ*\u0010\u0012\u001a\r\u0012\t\u0012\u00070\u0003\u00a2\u0006\u0002\u0008\u00110\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J%\u0010\u0016\u001a\u00020\t2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0015\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\"\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/core/common/internal/BindingViewHolder;",
        "Lfyd;",
        "Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
        "selected",
        "",
        "dataList",
        "Lkotlin/Function1;",
        "",
        "onItemClick",
        "<init>",
        "(Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;Lteam/opay/business/provider/smeVa/TransferNumberInfo;[Lteam/opay/business/provider/smeVa/TransferNumberInfo;Lkotlin/jvm/functions/Function1;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "n",
        "(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;",
        "holder",
        "position",
        "l",
        "(Lteam/opay/core/common/internal/BindingViewHolder;I)V",
        "getItemCount",
        "()I",
        "a",
        "Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
        "b",
        "[Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "sme-va_release"
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
.field public final a:Lteam/opay/business/provider/smeVa/TransferNumberInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:[Lteam/opay/business/provider/smeVa/TransferNumberInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final synthetic d:Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;Lteam/opay/business/provider/smeVa/TransferNumberInfo;[Lteam/opay/business/provider/smeVa/TransferNumberInfo;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/provider/smeVa/TransferNumberInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Lteam/opay/business/provider/smeVa/TransferNumberInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
            "[",
            "Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "dataList"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;->d:Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;

    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;->a:Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 12
    .line 13
    iput-object p3, p0, Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;->b:[Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 14
    .line 15
    iput-object p4, p0, Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic k(Lteam/opay/core/common/internal/BindingViewHolder;Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;Lteam/opay/business/provider/smeVa/TransferNumberInfo;Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;->m(Lteam/opay/core/common/internal/BindingViewHolder;Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;Lteam/opay/business/provider/smeVa/TransferNumberInfo;Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final m(Lteam/opay/core/common/internal/BindingViewHolder;Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;Lteam/opay/business/provider/smeVa/TransferNumberInfo;Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lfyd;

    .line 8
    .line 9
    invoke-virtual {p0}, Lfyd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "getContext(...)"

    .line 18
    .line 19
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v1, v1, [Lkotlin/Pair;

    .line 24
    .line 25
    const-string v2, "mybusiness_page_account_switch_popup_select_click"

    .line 26
    .line 27
    invoke-virtual {v0, p0, v2, v1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p1, Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p3}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;->b:[Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public l(Lteam/opay/core/common/internal/BindingViewHolder;I)V
    .locals 9
    .param p1    # Lteam/opay/core/common/internal/BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lfyd;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;->b:[Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/a;->Q([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lfyd;

    .line 22
    .line 23
    iget-object v1, v0, Lfyd;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 24
    .line 25
    const-string v0, "tvHeader"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getIcon()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sget v3, Lteam/opay/sme/va/R$drawable;->sme_icon_tn:I

    .line 35
    .line 36
    const/16 v7, 0x1c

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-static/range {v1 .. v8}, Lteam/opay/core/common/android/glide/a;->c(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getAccountNumberIsPhone()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    sget v1, Lteam/opay/core/common/R$color;->yellow_pink:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget v1, Lteam/opay/sme/va/R$color;->mint:I

    .line 61
    .line 62
    :goto_0
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lfyd;

    .line 71
    .line 72
    iget-object v1, v1, Lfyd;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    .line 74
    const-string v2, "accountType"

    .line 75
    .line 76
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v3, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 80
    .line 81
    invoke-direct {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    .line 82
    .line 83
    .line 84
    const/high16 v4, 0x42000000    # 32.0f

    .line 85
    .line 86
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    mul-float v5, v5, v4

    .line 105
    .line 106
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    const-class v5, Ljava/lang/Float;

    .line 111
    .line 112
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 117
    .line 118
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_2

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 130
    .line 131
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_3

    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Ljava/lang/Float;

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_3
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 153
    .line 154
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-eqz v6, :cond_4

    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 165
    .line 166
    .line 167
    move-result-wide v4

    .line 168
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Ljava/lang/Float;

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_4
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 176
    .line 177
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_b

    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 188
    .line 189
    .line 190
    move-result-wide v4

    .line 191
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    check-cast v4, Ljava/lang/Float;

    .line 196
    .line 197
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    const/4 v5, 0x0

    .line 202
    invoke-virtual {v3, v5, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    const-string v4, "build(...)"

    .line 211
    .line 212
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance v4, Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 216
    .line 217
    invoke-direct {v4}, Lteam/opay/core/common/android/ShapeConfig$Builder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v0}, Lteam/opay/core/common/android/ShapeConfig$Builder;->k(I)Lteam/opay/core/common/android/ShapeConfig$Builder;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lteam/opay/core/common/android/ShapeConfig$Builder;->a()Lteam/opay/core/common/android/ShapeConfig;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v1, v3, v0}, Ls0g;->a(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;Lteam/opay/core/common/android/ShapeConfig;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, Lfyd;

    .line 236
    .line 237
    iget-object v0, v0, Lfyd;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 238
    .line 239
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getAccountNumberIsPhone()Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_5

    .line 250
    .line 251
    sget v3, Lteam/opay/sme/va/R$string;->sme_va_account_type_phone:I

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_5
    sget v3, Lteam/opay/sme/va/R$string;->sme_va_account_type_tn:I

    .line 255
    .line 256
    :goto_2
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Lfyd;

    .line 268
    .line 269
    iget-object v0, v0, Lfyd;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 270
    .line 271
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getAccountType()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    const/4 v2, 0x1

    .line 279
    if-eqz v1, :cond_6

    .line 280
    .line 281
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_7

    .line 286
    .line 287
    :cond_6
    const/4 v5, 0x1

    .line 288
    :cond_7
    xor-int/lit8 v1, v5, 0x1

    .line 289
    .line 290
    invoke-static {v0, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    check-cast v0, Lfyd;

    .line 298
    .line 299
    iget-object v0, v0, Lfyd;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 300
    .line 301
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    const-string v2, ""

    .line 306
    .line 307
    if-nez v1, :cond_8

    .line 308
    .line 309
    move-object v1, v2

    .line 310
    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Lfyd;

    .line 318
    .line 319
    iget-object v0, v0, Lfyd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 320
    .line 321
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getName()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    if-nez v1, :cond_9

    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_9
    move-object v2, v1

    .line 329
    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p2}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    iget-object v1, p0, Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;->a:Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 337
    .line 338
    if-eqz v1, :cond_a

    .line 339
    .line 340
    invoke-virtual {v1}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    goto :goto_4

    .line 345
    :cond_a
    const/4 v1, 0x0

    .line 346
    :goto_4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    check-cast v1, Lfyd;

    .line 355
    .line 356
    iget-object v1, v1, Lfyd;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 357
    .line 358
    const-string v2, "tvCheck"

    .line 359
    .line 360
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-static {v1, v0}, Lg0g;->j(Landroid/view/View;Z)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    check-cast v1, Lfyd;

    .line 371
    .line 372
    invoke-virtual {v1}, Lfyd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    check-cast v0, Lfyd;

    .line 384
    .line 385
    invoke-virtual {v0}, Lfyd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    const-string v1, "getRoot(...)"

    .line 390
    .line 391
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    iget-object v1, p0, Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;->d:Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;

    .line 395
    .line 396
    new-instance v2, Lu92;

    .line 397
    .line 398
    invoke-direct {v2, p1, p0, p2, v1}, Lu92;-><init>(Lteam/opay/core/common/internal/BindingViewHolder;Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;Lteam/opay/business/provider/smeVa/TransferNumberInfo;Lteam/opay/sme/va/v2/ChangeTransferNumberDialog;)V

    .line 399
    .line 400
    .line 401
    invoke-static {v0, v2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 406
    .line 407
    const-string p2, "return number type not support"

    .line 408
    .line 409
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw p1
.end method

.method public n(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lfyd;",
            ">;"
        }
    .end annotation

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
    new-instance p2, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p1, v1}, Lfyd;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfyd;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "inflate(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p1}, Lteam/opay/core/common/internal/BindingViewHolder;-><init>(Lxyf;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;->l(Lteam/opay/core/common/internal/BindingViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/v2/ChangeTransferNumberDialog$ChangeTransferNumberAdapter;->n(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
