.class public final Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "OpayBankBeneficiaryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter$DiffCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010!\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001,B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001d\u0010\r\u001a\u00020\u00082\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ;\u0010\u0015\u001a\u00020\u0008*\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R0\u0010\u001e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00080\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010%\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R!\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00100&8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\u00a8\u0006-"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "data",
        "",
        "n",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V",
        "",
        "newData",
        "s",
        "(Ljava/util/List;)V",
        "Landroid/widget/TextView;",
        "",
        "keyWord",
        "bankAccountNo",
        "bankName",
        "bankCode",
        "u",
        "(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Lkotlin/Function1;",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "getItemClicked",
        "()Lkotlin/jvm/functions/Function1;",
        "t",
        "(Lkotlin/jvm/functions/Function1;)V",
        "itemClicked",
        "b",
        "Ljava/lang/String;",
        "getSearchKey",
        "()Ljava/lang/String;",
        "setSearchKey",
        "(Ljava/lang/String;)V",
        "searchKey",
        "",
        "c",
        "Lid8;",
        "p",
        "()Ljava/util/List;",
        "redBankCods",
        "DiffCallback",
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
.field public a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->item_bank_beneficiary:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lsoa;

    .line 7
    .line 8
    invoke-direct {v0}, Lsoa;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    new-instance v0, Ltoa;

    .line 14
    .line 15
    invoke-direct {v0}, Ltoa;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;->c:Lid8;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;->q(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;->r()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic m(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;->o(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final o(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final q(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final r()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;->n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V
    .locals 9
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/bean/TransferContactData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    invoke-static {p1}, Lcj7;->bind(Landroid/view/View;)Lcj7;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "bind(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Lcj7;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 21
    .line 22
    const-string v1, "icon"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhotoUrl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget v4, Lteam/opay/pay/R$mipmap;->bank_default_icon:I

    .line 32
    .line 33
    const/4 v6, 0x4

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static/range {v2 .. v7}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "title"

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, v0, Lcj7;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    iget-object v3, v0, Lcj7;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;->b:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const/4 v7, 0x4

    .line 74
    const/4 v8, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    invoke-static/range {v3 .. v8}, Lxie;->g(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    :goto_0
    iget-object v1, v0, Lcj7;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    iget-object v4, v0, Lcj7;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    const-string v0, "content"

    .line 91
    .line 92
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v5, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;->b:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountNo()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankCode()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    move-object v3, p0

    .line 110
    invoke-virtual/range {v3 .. v8}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;->u(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lroa;

    .line 117
    .line 118
    invoke-direct {v0, p0, p2}, Lroa;-><init>(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public final p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public final s(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    new-instance v0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter$DiffCallback;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_2
    invoke-direct {v0, p0, p1}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter$DiffCallback;-><init>(Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewDiffData(Lcom/chad/library/adapter/base/diff/BaseQuickDiffCallback;Z)V

    .line 36
    .line 37
    .line 38
    :goto_1
    return-void
.end method

.method public final t(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            "Lkotlin/Unit;",
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
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method

.method public final u(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v3, " "

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-object/from16 v4, p4

    .line 19
    .line 20
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/tabs/ac/OpayBankBeneficiaryAdapter;->p()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    move-object/from16 v5, p5

    .line 32
    .line 33
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, -0x1

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    sget v2, Lteam/opay/pay/R$string;->osdk_bank_unavailable:I

    .line 42
    .line 43
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 73
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    add-int/2addr v2, v1

    .line 80
    move-object/from16 v19, v3

    .line 81
    .line 82
    move v3, v2

    .line 83
    move-object/from16 v2, v19

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const/4 v1, -0x1

    .line 87
    const/4 v3, -0x1

    .line 88
    :goto_1
    const/4 v11, 0x4

    .line 89
    const/4 v12, 0x0

    .line 90
    const-string v8, " "

    .line 91
    .line 92
    const-string v9, ""

    .line 93
    .line 94
    const/4 v10, 0x0

    .line 95
    move-object v7, v2

    .line 96
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_2

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const-string v7, "getDefault(...)"

    .line 114
    .line 115
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    const-string v4, "toLowerCase(...)"

    .line 123
    .line 124
    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const/16 v17, 0x6

    .line 128
    .line 129
    const/16 v18, 0x0

    .line 130
    .line 131
    const/4 v15, 0x0

    .line 132
    const/16 v16, 0x0

    .line 133
    .line 134
    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    const/4 v9, 0x0

    .line 154
    const/4 v10, 0x0

    .line 155
    :goto_2
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    if-ge v5, v11, :cond_5

    .line 160
    .line 161
    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    add-int/lit8 v12, v9, 0x1

    .line 166
    .line 167
    add-int v13, v8, v10

    .line 168
    .line 169
    const/16 v14, 0x20

    .line 170
    .line 171
    if-ge v9, v13, :cond_3

    .line 172
    .line 173
    if-ne v11, v14, :cond_3

    .line 174
    .line 175
    add-int/lit8 v10, v10, 0x1

    .line 176
    .line 177
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 181
    .line 182
    .line 183
    move-result v13

    .line 184
    add-int/2addr v13, v8

    .line 185
    add-int/2addr v13, v4

    .line 186
    if-ge v9, v13, :cond_4

    .line 187
    .line 188
    if-ne v11, v14, :cond_4

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 192
    .line 193
    move v9, v12

    .line 194
    goto :goto_2

    .line 195
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    add-int/2addr v0, v8

    .line 200
    add-int/2addr v0, v4

    .line 201
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-le v0, v4, :cond_6

    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    :cond_6
    move v5, v10

    .line 212
    goto :goto_6

    .line 213
    :cond_7
    :goto_5
    const/4 v0, -0x1

    .line 214
    const/4 v8, -0x1

    .line 215
    :goto_6
    new-instance v4, Landroid/text/SpannableString;

    .line 216
    .line 217
    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    const/16 v2, 0x21

    .line 221
    .line 222
    if-eq v1, v6, :cond_8

    .line 223
    .line 224
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    .line 225
    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    sget v10, Lteam/opay/pay/R$color;->osdk_color_DC0C48:I

    .line 231
    .line 232
    invoke-static {v9, v10}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    invoke-direct {v7, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v7, v1, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 240
    .line 241
    .line 242
    :cond_8
    if-eq v8, v6, :cond_9

    .line 243
    .line 244
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 245
    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    sget v6, Lteam/opay/pay/R$color;->color_00B876:I

    .line 251
    .line 252
    invoke-static {v3, v6}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 257
    .line 258
    .line 259
    add-int/2addr v8, v5

    .line 260
    invoke-virtual {v4, v1, v8, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 261
    .line 262
    .line 263
    :cond_9
    move-object/from16 v0, p1

    .line 264
    .line 265
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    return-void
.end method
