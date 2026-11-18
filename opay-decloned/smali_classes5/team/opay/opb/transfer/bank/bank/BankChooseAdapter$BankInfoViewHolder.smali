.class public final Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter$BankInfoViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BankChooseAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BankInfoViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J1\u0010\r\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0014\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter$BankInfoViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;Landroid/view/View;)V",
        "Lteam/opay/business/core/bank/BankInfo;",
        "bankInfo",
        "Lkotlin/Function1;",
        "",
        "onTransferClick",
        "",
        "position",
        "b",
        "(Lteam/opay/business/core/bank/BankInfo;Lkotlin/jvm/functions/Function1;I)V",
        "Lgj0;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;",
        "d",
        "()Lgj0;",
        "binding",
        "business-transfer-bank_release"
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
.field public static final synthetic c:[Lzo7;
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
.field public final a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/opb/transfer/bank/databinding/BankItemBankChooseBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter$BankInfoViewHolder;

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
    sput-object v1, Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter$BankInfoViewHolder;->c:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter$BankInfoViewHolder;->b:Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 12
    .line 13
    const-class p2, Lgj0;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;-><init>(Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter$BankInfoViewHolder;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Lteam/opay/business/core/bank/BankInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter$BankInfoViewHolder;->c(Lkotlin/jvm/functions/Function1;Lteam/opay/business/core/bank/BankInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lkotlin/jvm/functions/Function1;Lteam/opay/business/core/bank/BankInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final b(Lteam/opay/business/core/bank/BankInfo;Lkotlin/jvm/functions/Function1;I)V
    .locals 9
    .param p1    # Lteam/opay/business/core/bank/BankInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/core/bank/BankInfo;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/business/core/bank/BankInfo;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "bankInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onTransferClick"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter$BankInfoViewHolder;->d()Lgj0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter$BankInfoViewHolder;->b:Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/business/core/bank/BankInfo;->getServiceType()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lzi0;->a(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, v0, Lgj0;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 26
    .line 27
    const-string v4, "bankIcon"

    .line 28
    .line 29
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/business/core/bank/BankInfo;->getIcon()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v3, v4, v2}, Lle7;->d(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, Lgj0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    invoke-virtual {p1}, Lteam/opay/business/core/bank/BankInfo;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v0, Lgj0;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    .line 50
    const-string v3, "itemLayout"

    .line 51
    .line 52
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Lki0;

    .line 56
    .line 57
    invoke-direct {v3, p2, p1}, Lki0;-><init>(Lkotlin/jvm/functions/Function1;Lteam/opay/business/core/bank/BankInfo;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v3}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p3}, Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;->getSectionForPosition(I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {v1, p1}, Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;->getPositionForSection(I)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 p2, 0x0

    .line 72
    if-ne p3, p1, :cond_1

    .line 73
    .line 74
    iget-object p1, v0, Lgj0;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, v0, Lgj0;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    invoke-static {v1}, Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;->k(Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lteam/opay/business/core/bank/BankInfo;

    .line 90
    .line 91
    invoke-virtual {v2}, Lteam/opay/business/core/bank/BankInfo;->getLetter()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const/4 v2, 0x2

    .line 96
    const/4 v4, 0x0

    .line 97
    const-string v5, "_"

    .line 98
    .line 99
    invoke-static {v3, v5, p2, v2, v4}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_0

    .line 104
    .line 105
    const/4 v7, 0x4

    .line 106
    const/4 v8, 0x0

    .line 107
    const-string v4, "_"

    .line 108
    .line 109
    const-string v5, ""

    .line 110
    .line 111
    const/4 v6, 0x0

    .line 112
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    iget-object p1, v0, Lgj0;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    const/16 v2, 0x8

    .line 123
    .line 124
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    :goto_0
    add-int/lit8 p1, p3, 0x1

    .line 128
    .line 129
    invoke-static {v1}, Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;->k(Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-ge p1, v2, :cond_2

    .line 138
    .line 139
    invoke-static {v1}, Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;->k(Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    check-cast p3, Lteam/opay/business/core/bank/BankInfo;

    .line 148
    .line 149
    invoke-virtual {p3}, Lteam/opay/business/core/bank/BankInfo;->getLetter()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    invoke-static {v1}, Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;->k(Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Lteam/opay/business/core/bank/BankInfo;

    .line 162
    .line 163
    invoke-virtual {p1}, Lteam/opay/business/core/bank/BankInfo;->getLetter()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_2

    .line 172
    .line 173
    const/4 p2, 0x1

    .line 174
    :cond_2
    iget-object p1, v0, Lgj0;->d:Landroid/view/View;

    .line 175
    .line 176
    const-string p3, "dividerLine"

    .line 177
    .line 178
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-static {p1, p2}, Lg0g;->f(Landroid/view/View;Z)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public final d()Lgj0;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter$BankInfoViewHolder;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/opb/transfer/bank/bank/BankChooseAdapter$BankInfoViewHolder;->c:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;->c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lgj0;

    .line 13
    .line 14
    return-object v0
.end method
