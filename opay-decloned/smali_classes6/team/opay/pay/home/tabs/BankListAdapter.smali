.class public final Lteam/opay/pay/home/tabs/BankListAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "BankListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/tabs/BankListAdapter$BankInfoComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
        "Lteam/opay/pay/home/tabs/BankInfo;",
        ">;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0014\u0018\u00002\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001:\u0001DB\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J)\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00042\u0010\u0010\u0008\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ*\u0010\u0010\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000eH\u0086@\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0018\u001a\u00020\t2\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J)\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00042\u0010\u0010\u0008\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u000bJ?\u0010\u001f\u001a\u00020\t2\u0014\u0010\u001c\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u001b2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0014H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J?\u0010!\u001a\u00020\t2\u0014\u0010\u001c\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u001b2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0014H\u0002\u00a2\u0006\u0004\u0008!\u0010 R6\u0010)\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\t\u0018\u00010\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\"\u0010\u001c\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\"\u00100\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u0010.R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00107\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u00109\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00106R\u0014\u0010;\u001a\u00020\u00128\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008:\u0010+R\u0014\u0010=\u001a\u00020\u00128\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008<\u0010+R\u0014\u0010?\u001a\u00020\u00128\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008>\u0010+R\u001a\u0010C\u001a\u00020\u00128\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008@\u0010+\u001a\u0004\u0008A\u0010B\u00a8\u0006E"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/BankListAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;",
        "Lteam/opay/pay/home/tabs/BankInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "item",
        "",
        "t",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V",
        "Lteam/opay/pay/api/UserBanksMate;",
        "userBanksMate",
        "",
        "banks",
        "z",
        "(Lteam/opay/pay/api/UserBanksMate;Ljava/util/List;Ljr2;)Ljava/lang/Object;",
        "",
        "s",
        "",
        "w",
        "(Ljava/lang/String;)I",
        "key",
        "y",
        "(Ljava/lang/String;)V",
        "r",
        "",
        "list",
        "data",
        "max",
        "o",
        "(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;)V",
        "q",
        "Lkotlin/Function2;",
        "a",
        "Lkotlin/jvm/functions/Function2;",
        "getOnBankClickedListener",
        "()Lkotlin/jvm/functions/Function2;",
        "A",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onBankClickedListener",
        "b",
        "Ljava/lang/String;",
        "searchKey",
        "c",
        "Ljava/util/List;",
        "d",
        "expandList",
        "",
        "e",
        "Z",
        "expanded",
        "f",
        "I",
        "accurateBanksStartIndex",
        "g",
        "fuzzyBanksStartIndex",
        "h",
        "MATCHED",
        "i",
        "FREQUENTLY_USED",
        "j",
        "BANK_LIST",
        "k",
        "x",
        "()Ljava/lang/String;",
        "SEARCHED",
        "BankInfoComparator",
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
.field public a:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lteam/opay/pay/home/tabs/BankInfo;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
            "Lteam/opay/pay/home/tabs/BankInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
            "Lteam/opay/pay/home/tabs/BankInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Z

.field public f:I

.field public g:I

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->d:Ljava/util/List;

    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->f:I

    .line 21
    .line 22
    iput v0, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->g:I

    .line 23
    .line 24
    const-string v0, "matched"

    .line 25
    .line 26
    iput-object v0, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->h:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "frequently_used"

    .line 29
    .line 30
    iput-object v0, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->i:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "bank_list"

    .line 33
    .line 34
    iput-object v0, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->j:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "searched"

    .line 37
    .line 38
    iput-object v0, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->k:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    sget v1, Lteam/opay/pay/R$layout;->item_bank_list:I

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x3

    .line 47
    sget v1, Lteam/opay/pay/R$layout;->item_choose_bank_gride:I

    .line 48
    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    sget v1, Lteam/opay/pay/R$layout;->item_bank_page_title:I

    .line 54
    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x6

    .line 59
    sget v1, Lteam/opay/pay/R$layout;->item_list_bottom:I

    .line 60
    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    sget v1, Lteam/opay/pay/R$layout;->item_title_letter:I

    .line 66
    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x4

    .line 71
    sget v1, Lteam/opay/pay/R$layout;->item_choose_bank_expand:I

    .line 72
    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/home/tabs/BankInfo;Lteam/opay/pay/home/tabs/BankListAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/tabs/BankListAdapter;->u(Lteam/opay/pay/home/tabs/BankInfo;Lteam/opay/pay/home/tabs/BankListAdapter;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lteam/opay/pay/home/tabs/BankInfo;Lteam/opay/pay/home/tabs/BankListAdapter;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/home/tabs/BankListAdapter;->s(Lteam/opay/pay/home/tabs/BankInfo;Lteam/opay/pay/home/tabs/BankListAdapter;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lteam/opay/pay/home/tabs/BankListAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/home/tabs/BankListAdapter;->v(Lteam/opay/pay/home/tabs/BankListAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n(Lteam/opay/pay/home/tabs/BankListAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lteam/opay/pay/home/tabs/BankListAdapter;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/home/tabs/BankListAdapter;->o(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final s(Lteam/opay/pay/home/tabs/BankInfo;Lteam/opay/pay/home/tabs/BankListAdapter;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    iget-object p3, p1, Lteam/opay/pay/home/tabs/BankListAdapter;->a:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    if-eqz p3, :cond_2

    .line 6
    .line 7
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->g()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p2, v0, :cond_1

    .line 20
    .line 21
    iget-object p1, p1, Lteam/opay/pay/home/tabs/BankListAdapter;->i:Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iget-object p1, p1, Lteam/opay/pay/home/tabs/BankListAdapter;->h:Ljava/lang/String;

    .line 25
    .line 26
    :goto_1
    invoke-interface {p3, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public static final u(Lteam/opay/pay/home/tabs/BankInfo;Lteam/opay/pay/home/tabs/BankListAdapter;Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    iget-object p2, p1, Lteam/opay/pay/home/tabs/BankListAdapter;->a:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    iget-object v0, p1, Lteam/opay/pay/home/tabs/BankListAdapter;->b:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p1, Lteam/opay/pay/home/tabs/BankListAdapter;->k:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    iget-object p1, p1, Lteam/opay/pay/home/tabs/BankListAdapter;->j:Ljava/lang/String;

    .line 22
    .line 23
    :goto_1
    invoke-interface {p2, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public static final v(Lteam/opay/pay/home/tabs/BankListAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p4, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->e:Z

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p4, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->d:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p4, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object p4, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->d:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result p4

    .line 22
    sub-int/2addr p1, p4

    .line 23
    iget-object p4, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->d:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    invoke-virtual {p0, p1, p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p4, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->d:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {p4, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iget-object p4, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->d:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result p4

    .line 54
    invoke-virtual {p0, p1, p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-boolean p1, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->e:Z

    .line 58
    .line 59
    xor-int/lit8 p4, p1, 0x1

    .line 60
    .line 61
    iput-boolean p4, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->e:Z

    .line 62
    .line 63
    if-nez p1, :cond_1

    .line 64
    .line 65
    sget p0, Lteam/opay/pay/R$drawable;->ic_arrow_up:I

    .line 66
    .line 67
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    .line 69
    .line 70
    sget p0, Lteam/opay/pay/R$string;->osdk_collapse:I

    .line 71
    .line 72
    invoke-static {p0}, Ljmf;->k(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    sget p0, Lteam/opay/pay/R$drawable;->ic_arrow_down:I

    .line 81
    .line 82
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    .line 84
    .line 85
    sget p0, Lteam/opay/pay/R$string;->expand_content_description:I

    .line 86
    .line 87
    invoke-static {p0}, Ljmf;->k(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    return-void
.end method


# virtual methods
.method public final A(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lteam/opay/pay/home/tabs/BankInfo;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->a:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/BankListAdapter;->t(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
            "Lteam/opay/pay/home/tabs/BankInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Lteam/opay/pay/home/tabs/BankInfo;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    if-le v6, v7, :cond_0

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v6, 0x0

    .line 26
    :goto_0
    if-eqz v6, :cond_1

    .line 27
    .line 28
    invoke-static/range {p3 .. p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    invoke-interface {v2, v4, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v7, v2

    .line 41
    :goto_1
    if-eqz v6, :cond_3

    .line 42
    .line 43
    iget-object v8, v0, Lteam/opay/pay/home/tabs/BankListAdapter;->d:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 46
    .line 47
    .line 48
    invoke-static/range {p3 .. p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    invoke-interface {v2, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_2

    .line 72
    .line 73
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    move-object v12, v9

    .line 78
    check-cast v12, Lteam/opay/pay/home/tabs/BankInfo;

    .line 79
    .line 80
    iget-object v9, v0, Lteam/opay/pay/home/tabs/BankListAdapter;->d:Ljava/util/List;

    .line 81
    .line 82
    new-instance v15, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 83
    .line 84
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v18

    .line 88
    const/16 v19, 0x6c

    .line 89
    .line 90
    const/16 v20, 0x0

    .line 91
    .line 92
    const/4 v11, 0x3

    .line 93
    const/4 v13, 0x0

    .line 94
    const/4 v14, 0x0

    .line 95
    const/16 v16, 0x1

    .line 96
    .line 97
    const/16 v17, 0x0

    .line 98
    .line 99
    const/16 v21, 0x0

    .line 100
    .line 101
    move-object v10, v15

    .line 102
    move-object v4, v15

    .line 103
    move/from16 v15, v16

    .line 104
    .line 105
    move-object/from16 v16, v17

    .line 106
    .line 107
    move-object/from16 v17, v21

    .line 108
    .line 109
    invoke-direct/range {v10 .. v20}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    const/4 v4, 0x0

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    iget-object v4, v0, Lteam/opay/pay/home/tabs/BankListAdapter;->d:Ljava/util/List;

    .line 118
    .line 119
    invoke-virtual {v0, v4, v2, v3}, Lteam/opay/pay/home/tabs/BankListAdapter;->q(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_5

    .line 131
    .line 132
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    move-object v10, v4

    .line 137
    check-cast v10, Lteam/opay/pay/home/tabs/BankInfo;

    .line 138
    .line 139
    new-instance v4, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 140
    .line 141
    if-eqz v3, :cond_4

    .line 142
    .line 143
    const/4 v8, 0x1

    .line 144
    goto :goto_4

    .line 145
    :cond_4
    const/4 v8, 0x0

    .line 146
    :goto_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v16

    .line 150
    const/16 v17, 0x6c

    .line 151
    .line 152
    const/16 v18, 0x0

    .line 153
    .line 154
    const/4 v9, 0x3

    .line 155
    const/4 v11, 0x0

    .line 156
    const/4 v12, 0x0

    .line 157
    const/4 v13, 0x1

    .line 158
    const/4 v14, 0x0

    .line 159
    const/4 v15, 0x0

    .line 160
    move-object v8, v4

    .line 161
    invoke-direct/range {v8 .. v18}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_5
    invoke-virtual {v0, v1, v7, v3}, Lteam/opay/pay/home/tabs/BankListAdapter;->q(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;)V

    .line 169
    .line 170
    .line 171
    if-eqz v6, :cond_6

    .line 172
    .line 173
    new-instance v2, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 174
    .line 175
    const/16 v31, 0xee

    .line 176
    .line 177
    const/16 v32, 0x0

    .line 178
    .line 179
    const/16 v23, 0x4

    .line 180
    .line 181
    const/16 v24, 0x0

    .line 182
    .line 183
    const/16 v25, 0x0

    .line 184
    .line 185
    const/16 v26, 0x0

    .line 186
    .line 187
    const/16 v27, 0x3

    .line 188
    .line 189
    const/16 v28, 0x0

    .line 190
    .line 191
    const/16 v29, 0x0

    .line 192
    .line 193
    const/16 v30, 0x0

    .line 194
    .line 195
    move-object/from16 v22, v2

    .line 196
    .line 197
    invoke-direct/range {v22 .. v32}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 198
    .line 199
    .line 200
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_6
    new-instance v2, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 205
    .line 206
    if-eqz v3, :cond_7

    .line 207
    .line 208
    const/4 v4, 0x1

    .line 209
    goto :goto_5

    .line 210
    :cond_7
    const/4 v4, 0x0

    .line 211
    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    const/16 v12, 0x6e

    .line 216
    .line 217
    const/4 v13, 0x0

    .line 218
    const/4 v4, 0x6

    .line 219
    const/4 v5, 0x0

    .line 220
    const/4 v6, 0x0

    .line 221
    const/4 v7, 0x0

    .line 222
    const/4 v8, 0x3

    .line 223
    const/4 v9, 0x0

    .line 224
    const/4 v10, 0x0

    .line 225
    move-object v3, v2

    .line 226
    invoke-direct/range {v3 .. v13}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 227
    .line 228
    .line 229
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    :goto_6
    return-void
.end method

.method public final q(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
            "Lteam/opay/pay/home/tabs/BankInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Lteam/opay/pay/home/tabs/BankInfo;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    rem-int/lit8 v0, v0, 0x3

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    rsub-int/lit8 v0, v0, 0x3

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v0, :cond_1

    .line 14
    .line 15
    new-instance v14, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v3, 0x0

    .line 22
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v11

    .line 26
    const/16 v12, 0x6c

    .line 27
    .line 28
    const/4 v13, 0x0

    .line 29
    const/4 v4, 0x3

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x1

    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v10, 0x0

    .line 36
    move-object v3, v14

    .line 37
    invoke-direct/range {v3 .. v13}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    move-object/from16 v3, p1

    .line 41
    .line 42
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public final r(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
            "Lteam/opay/pay/home/tabs/BankInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lteam/opay/pay/home/tabs/BankInfo;

    .line 9
    .line 10
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->g()Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne v1, v2, :cond_2

    .line 23
    .line 24
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 25
    .line 26
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    sget v4, Lteam/opay/pay/R$color;->color_f8f8fb:I

    .line 31
    .line 32
    invoke-static {v3, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 41
    .line 42
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    sget v4, Lteam/opay/pay/R$color;->osdk_color_f0faf4:I

    .line 47
    .line 48
    invoke-static {v3, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 53
    .line 54
    .line 55
    :goto_1
    sget v1, Lteam/opay/pay/R$id;->bank_icon:I

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 62
    .line 63
    sget v3, Lteam/opay/pay/R$id;->bank_num:I

    .line 64
    .line 65
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Landroid/widget/TextView;

    .line 70
    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankInfo;->getIcon()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    sget v5, Lteam/opay/pay/R$mipmap;->bank_default_icon:I

    .line 103
    .line 104
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-static {v1, v4, v5}, Lme7;->a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankInfo;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    :goto_2
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 119
    .line 120
    new-instance v3, Lsj0;

    .line 121
    .line 122
    invoke-direct {v3, v0, p0, p2}, Lsj0;-><init>(Lteam/opay/pay/home/tabs/BankInfo;Lteam/opay/pay/home/tabs/BankListAdapter;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    sget v1, Lteam/opay/pay/R$id;->bank_tips:I

    .line 129
    .line 130
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Landroid/widget/TextView;

    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankInfo;->getSubscriptIcon()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    goto :goto_3

    .line 144
    :cond_4
    move-object v4, v3

    .line 145
    :goto_3
    if-eqz v4, :cond_8

    .line 146
    .line 147
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-nez v4, :cond_5

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_5
    if-eqz v1, :cond_6

    .line 155
    .line 156
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    if-eqz v1, :cond_9

    .line 160
    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankInfo;->getSubscriptIcon()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    :cond_7
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    .line 172
    .line 173
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 174
    .line 175
    .line 176
    :cond_9
    :goto_5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    .line 183
    .line 184
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 188
    .line 189
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->g()Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    if-nez p2, :cond_a

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    if-ne p2, v2, :cond_b

    .line 201
    .line 202
    iget p2, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->g:I

    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_b
    :goto_6
    iget p2, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->f:I

    .line 206
    .line 207
    :goto_7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    sub-int/2addr v1, p2

    .line 212
    rem-int/lit8 v1, v1, 0x3

    .line 213
    .line 214
    const/16 p2, 0x10

    .line 215
    .line 216
    const/4 v3, 0x0

    .line 217
    if-eqz v1, :cond_e

    .line 218
    .line 219
    if-eq v1, v2, :cond_c

    .line 220
    .line 221
    const/4 v2, 0x2

    .line 222
    if-eq v1, v2, :cond_d

    .line 223
    .line 224
    :cond_c
    :goto_8
    const/4 p2, 0x0

    .line 225
    goto :goto_9

    .line 226
    :cond_d
    invoke-static {p2}, Ljmf;->d(I)I

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    goto :goto_9

    .line 231
    :cond_e
    invoke-static {p2}, Ljmf;->d(I)I

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    move v3, p2

    .line 236
    goto :goto_8

    .line 237
    :goto_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 238
    .line 239
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    .line 247
    .line 248
    return-void
.end method

.method public t(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V
    .locals 11
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
            "Lteam/opay/pay/home/tabs/BankInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->getItemType()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v0

    .line 19
    :goto_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    sget v0, Lteam/opay/pay/R$id;->title:I

    .line 29
    .line 30
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->h()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 35
    .line 36
    .line 37
    sget p2, Lteam/opay/pay/R$id;->top_bg:I

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_10

    .line 44
    .line 45
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    sget v0, Lteam/opay/pay/R$drawable;->solid_f8f8fb_top_12:I

    .line 48
    .line 49
    invoke-static {p2, v0}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_9

    .line 57
    .line 58
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-ne v3, v2, :cond_4

    .line 67
    .line 68
    sget v0, Lteam/opay/pay/R$id;->tv_title:I

    .line 69
    .line 70
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->h()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 75
    .line 76
    .line 77
    goto/16 :goto_9

    .line 78
    .line 79
    :cond_4
    :goto_2
    if-nez v1, :cond_5

    .line 80
    .line 81
    goto/16 :goto_5

    .line 82
    .line 83
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    const/4 v4, 0x2

    .line 88
    if-ne v3, v4, :cond_9

    .line 89
    .line 90
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lteam/opay/pay/home/tabs/BankInfo;

    .line 95
    .line 96
    sget v3, Lteam/opay/pay/R$id;->bank_ic:I

    .line 97
    .line 98
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    .line 103
    .line 104
    sget v4, Lteam/opay/pay/R$id;->bank_name:I

    .line 105
    .line 106
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    move-object v5, v4

    .line 111
    check-cast v5, Landroid/widget/TextView;

    .line 112
    .line 113
    sget v4, Lteam/opay/pay/R$id;->line:I

    .line 114
    .line 115
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    if-nez v1, :cond_6

    .line 120
    .line 121
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v5}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v5}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/BankInfo;->getIcon()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    sget v7, Lteam/opay/pay/R$mipmap;->bank_default_icon:I

    .line 151
    .line 152
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-static {v3, v6, v7}, Lme7;->a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    .line 158
    .line 159
    iget-object v6, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->b:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/BankInfo;->getName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    const/4 v9, 0x4

    .line 166
    const/4 v10, 0x0

    .line 167
    const/4 v8, 0x0

    .line 168
    invoke-static/range {v5 .. v10}, Lxie;->g(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :goto_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    check-cast p2, Lteam/opay/pay/home/tabs/BankInfo;

    .line 179
    .line 180
    if-eqz p2, :cond_7

    .line 181
    .line 182
    invoke-virtual {p2}, Lteam/opay/pay/home/tabs/BankInfo;->getLetter()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    goto :goto_4

    .line 187
    :cond_7
    move-object p2, v0

    .line 188
    :goto_4
    iget-object v3, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    add-int/2addr v5, v2

    .line 195
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 200
    .line 201
    if-eqz v2, :cond_8

    .line 202
    .line 203
    invoke-virtual {v2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    check-cast v2, Lteam/opay/pay/home/tabs/BankInfo;

    .line 208
    .line 209
    if-eqz v2, :cond_8

    .line 210
    .line 211
    invoke-virtual {v2}, Lteam/opay/pay/home/tabs/BankInfo;->getLetter()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    :cond_8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    invoke-static {v4, p2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 223
    .line 224
    new-instance p2, Lpj0;

    .line 225
    .line 226
    invoke-direct {p2, v1, p0}, Lpj0;-><init>(Lteam/opay/pay/home/tabs/BankInfo;Lteam/opay/pay/home/tabs/BankListAdapter;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_9

    .line 233
    .line 234
    :cond_9
    :goto_5
    if-nez v1, :cond_a

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    const/4 v2, 0x3

    .line 242
    if-ne v0, v2, :cond_b

    .line 243
    .line 244
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/BankListAdapter;->r(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_9

    .line 248
    .line 249
    :cond_b
    :goto_6
    if-nez v1, :cond_c

    .line 250
    .line 251
    goto :goto_7

    .line 252
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    const/4 v0, 0x6

    .line 257
    if-ne p2, v0, :cond_d

    .line 258
    .line 259
    sget p2, Lteam/opay/pay/R$id;->bottom:I

    .line 260
    .line 261
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 266
    .line 267
    sget v1, Lteam/opay/pay/R$drawable;->solid_f8f8fb_bottom_12:I

    .line 268
    .line 269
    invoke-static {v0, v1}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 274
    .line 275
    .line 276
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 277
    .line 278
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 279
    .line 280
    invoke-static {v0, v1}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 285
    .line 286
    .line 287
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 288
    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    .line 294
    .line 295
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 299
    .line 300
    const/16 v0, 0x10

    .line 301
    .line 302
    invoke-static {v0}, Ljmf;->d(I)I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 307
    .line 308
    .line 309
    invoke-static {v0}, Ljmf;->d(I)I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    .line 318
    .line 319
    goto :goto_9

    .line 320
    :cond_d
    :goto_7
    if-nez v1, :cond_e

    .line 321
    .line 322
    goto :goto_9

    .line 323
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 324
    .line 325
    .line 326
    move-result p2

    .line 327
    const/4 v0, 0x4

    .line 328
    if-ne p2, v0, :cond_10

    .line 329
    .line 330
    sget p2, Lteam/opay/pay/R$id;->expand_tv:I

    .line 331
    .line 332
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    check-cast p2, Landroid/widget/TextView;

    .line 337
    .line 338
    sget v0, Lteam/opay/pay/R$id;->icon:I

    .line 339
    .line 340
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    check-cast v0, Landroid/widget/ImageView;

    .line 345
    .line 346
    iget-boolean v1, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->e:Z

    .line 347
    .line 348
    if-eqz v1, :cond_f

    .line 349
    .line 350
    sget v1, Lteam/opay/pay/R$drawable;->ic_arrow_up:I

    .line 351
    .line 352
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    .line 354
    .line 355
    goto :goto_8

    .line 356
    :cond_f
    sget v1, Lteam/opay/pay/R$drawable;->ic_arrow_down:I

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 359
    .line 360
    .line 361
    :goto_8
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 362
    .line 363
    new-instance v2, Lrj0;

    .line 364
    .line 365
    invoke-direct {v2, p0, p1, v0, p2}, Lrj0;-><init>(Lteam/opay/pay/home/tabs/BankListAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    .line 370
    .line 371
    :cond_10
    :goto_9
    return-void
.end method

.method public final w(Ljava/lang/String;)I
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "s"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getData(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 31
    .line 32
    invoke-virtual {v2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->b()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x1

    .line 37
    if-ne v3, v4, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->h()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v1, -0x1

    .line 54
    :goto_1
    return v1
.end method

.method public final x()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y(Ljava/lang/String;)V
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_4

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 35
    .line 36
    invoke-virtual {v2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->b()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x2

    .line 41
    if-ne v3, v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lteam/opay/pay/home/tabs/BankInfo;

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/BankInfo;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 58
    .line 59
    const-string v6, "ROOT"

    .line 60
    .line 61
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const-string v7, "toLowerCase(...)"

    .line 69
    .line 70
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 v9, 0x0

    .line 86
    const/4 v10, 0x0

    .line 87
    invoke-static {v3, v8, v9, v4, v10}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    const/4 v4, 0x1

    .line 92
    if-ne v3, v4, :cond_1

    .line 93
    .line 94
    invoke-virtual {v2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lteam/opay/pay/home/tabs/BankInfo;

    .line 99
    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    invoke-virtual {v2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Lteam/opay/pay/home/tabs/BankInfo;

    .line 107
    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/BankInfo;->getName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-eqz v4, :cond_2

    .line 115
    .line 116
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    if-eqz v8, :cond_2

    .line 127
    .line 128
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const/4 v12, 0x6

    .line 139
    const/4 v13, 0x0

    .line 140
    const/4 v10, 0x0

    .line 141
    const/4 v11, 0x0

    .line 142
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    goto :goto_1

    .line 151
    :cond_2
    const/4 v4, -0x1

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    :goto_1
    invoke-virtual {v3, v4}, Lteam/opay/pay/home/tabs/BankInfo;->setTarget(Ljava/lang/Integer;)V

    .line 157
    .line 158
    .line 159
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_4
    new-instance p1, Lteam/opay/pay/home/tabs/BankListAdapter$BankInfoComparator;

    .line 165
    .line 166
    invoke-direct {p1}, Lteam/opay/pay/home/tabs/BankListAdapter$BankInfoComparator;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;Ljava/util/Comparator;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_5
    :goto_2
    iget-object p1, p0, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 182
    .line 183
    .line 184
    :goto_3
    return-void
.end method

.method public final z(Lteam/opay/pay/api/UserBanksMate;Ljava/util/List;Ljr2;)Ljava/lang/Object;
    .locals 22
    .param p1    # Lteam/opay/pay/api/UserBanksMate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/api/UserBanksMate;",
            "Ljava/util/List<",
            "Lteam/opay/pay/home/tabs/BankInfo;",
            ">;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    iget-object v0, v6, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/UserBanksMate;->getAccurateBanks()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v0, v6, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 19
    .line 20
    new-instance v1, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 21
    .line 22
    sget v3, Lteam/opay/pay/R$string;->osdk_matched_bank:I

    .line 23
    .line 24
    invoke-static {v3}, Ljmf;->k(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v11

    .line 28
    const/16 v17, 0xea

    .line 29
    .line 30
    const/16 v18, 0x0

    .line 31
    .line 32
    const/4 v9, 0x0

    .line 33
    const/4 v10, 0x0

    .line 34
    const/4 v12, 0x0

    .line 35
    const/4 v13, 0x3

    .line 36
    const/4 v14, 0x0

    .line 37
    const/4 v15, 0x0

    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    move-object v8, v1

    .line 41
    invoke-direct/range {v8 .. v18}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    iget-object v0, v6, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, v6, Lteam/opay/pay/home/tabs/BankListAdapter;->f:I

    .line 54
    .line 55
    iget-object v1, v6, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 56
    .line 57
    const/4 v4, 0x4

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    move-object/from16 v0, p0

    .line 61
    .line 62
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/home/tabs/BankListAdapter;->p(Lteam/opay/pay/home/tabs/BankListAdapter;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/UserBanksMate;->getFuzzyBanks()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move-object v1, v0

    .line 74
    :goto_0
    const/4 v2, 0x0

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    :cond_2
    if-eqz v7, :cond_a

    .line 84
    .line 85
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    goto/16 :goto_4

    .line 92
    .line 93
    :cond_3
    iget-object v1, v6, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 94
    .line 95
    new-instance v3, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 96
    .line 97
    sget v4, Lteam/opay/pay/R$string;->osdk_frequently_used_bank:I

    .line 98
    .line 99
    invoke-static {v4}, Ljmf;->k(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    const/4 v4, 0x1

    .line 104
    invoke-static {v4}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v16

    .line 108
    const/16 v17, 0x6a

    .line 109
    .line 110
    const/16 v18, 0x0

    .line 111
    .line 112
    const/4 v9, 0x0

    .line 113
    const/4 v10, 0x0

    .line 114
    const/4 v12, 0x0

    .line 115
    const/4 v13, 0x3

    .line 116
    const/4 v14, 0x0

    .line 117
    const/4 v15, 0x0

    .line 118
    move-object v8, v3

    .line 119
    invoke-direct/range {v8 .. v18}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget-object v1, v6, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iput v1, v6, Lteam/opay/pay/home/tabs/BankListAdapter;->g:I

    .line 132
    .line 133
    if-eqz p1, :cond_4

    .line 134
    .line 135
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/UserBanksMate;->getFuzzyBanks()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    goto :goto_1

    .line 140
    :cond_4
    move-object v1, v0

    .line 141
    :goto_1
    const/4 v3, 0x6

    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_9

    .line 149
    .line 150
    :cond_5
    if-eqz v7, :cond_6

    .line 151
    .line 152
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    goto :goto_2

    .line 157
    :cond_6
    const/4 v1, 0x0

    .line 158
    :goto_2
    if-le v1, v3, :cond_9

    .line 159
    .line 160
    iget-object v1, v6, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 161
    .line 162
    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    new-instance v4, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-eqz v8, :cond_8

    .line 179
    .line 180
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    move-object v9, v8

    .line 185
    check-cast v9, Lteam/opay/pay/home/tabs/BankInfo;

    .line 186
    .line 187
    invoke-static {}, Lnj0;->d()Ljava/util/ArrayList;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    invoke-virtual {v9}, Lteam/opay/pay/home/tabs/BankInfo;->getCode()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-eqz v9, :cond_7

    .line 200
    .line 201
    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_8
    new-instance v5, Lteam/opay/pay/home/tabs/BankListAdapter$setBanks$$inlined$sortedBy$1;

    .line 206
    .line 207
    invoke-direct {v5}, Lteam/opay/pay/home/tabs/BankListAdapter$setBanks$$inlined$sortedBy$1;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->M0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-interface {v4, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-static {v3}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v6, v1, v4, v3}, Lteam/opay/pay/home/tabs/BankListAdapter;->o(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_9
    iget-object v1, v6, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 227
    .line 228
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/UserBanksMate;->getFuzzyBanks()Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v3}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v6, v1, v4, v3}, Lteam/opay/pay/home/tabs/BankListAdapter;->o(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;)V

    .line 243
    .line 244
    .line 245
    :cond_a
    :goto_4
    if-eqz v7, :cond_e

    .line 246
    .line 247
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-eqz v3, :cond_e

    .line 256
    .line 257
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    add-int/lit8 v4, v2, 0x1

    .line 262
    .line 263
    if-gez v2, :cond_b

    .line 264
    .line 265
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 266
    .line 267
    .line 268
    :cond_b
    move-object v10, v3

    .line 269
    check-cast v10, Lteam/opay/pay/home/tabs/BankInfo;

    .line 270
    .line 271
    if-eqz v2, :cond_c

    .line 272
    .line 273
    invoke-virtual {v10}, Lteam/opay/pay/home/tabs/BankInfo;->getLetter()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    add-int/lit8 v2, v2, -0x1

    .line 278
    .line 279
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    check-cast v2, Lteam/opay/pay/home/tabs/BankInfo;

    .line 284
    .line 285
    invoke-virtual {v2}, Lteam/opay/pay/home/tabs/BankInfo;->getLetter()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-nez v2, :cond_d

    .line 294
    .line 295
    :cond_c
    iget-object v2, v6, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 296
    .line 297
    new-instance v3, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 298
    .line 299
    invoke-virtual {v10}, Lteam/opay/pay/home/tabs/BankInfo;->getLetter()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v14

    .line 303
    const/16 v20, 0xea

    .line 304
    .line 305
    const/16 v21, 0x0

    .line 306
    .line 307
    const/4 v12, 0x1

    .line 308
    const/4 v13, 0x0

    .line 309
    const/4 v15, 0x0

    .line 310
    const/16 v16, 0x3

    .line 311
    .line 312
    const/16 v17, 0x0

    .line 313
    .line 314
    const/16 v18, 0x0

    .line 315
    .line 316
    const/16 v19, 0x0

    .line 317
    .line 318
    move-object v11, v3

    .line 319
    invoke-direct/range {v11 .. v21}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 320
    .line 321
    .line 322
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    :cond_d
    iget-object v2, v6, Lteam/opay/pay/home/tabs/BankListAdapter;->c:Ljava/util/List;

    .line 326
    .line 327
    new-instance v3, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 328
    .line 329
    const/16 v17, 0xec

    .line 330
    .line 331
    const/16 v18, 0x0

    .line 332
    .line 333
    const/4 v9, 0x2

    .line 334
    const/4 v11, 0x0

    .line 335
    const/4 v12, 0x0

    .line 336
    const/4 v13, 0x3

    .line 337
    const/4 v14, 0x0

    .line 338
    const/4 v15, 0x0

    .line 339
    const/16 v16, 0x0

    .line 340
    .line 341
    move-object v8, v3

    .line 342
    invoke-direct/range {v8 .. v18}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 343
    .line 344
    .line 345
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move v2, v4

    .line 349
    goto :goto_5

    .line 350
    :cond_e
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    new-instance v2, Lteam/opay/pay/home/tabs/BankListAdapter$setBanks$6;

    .line 355
    .line 356
    invoke-direct {v2, v6, v0}, Lteam/opay/pay/home/tabs/BankListAdapter$setBanks$6;-><init>(Lteam/opay/pay/home/tabs/BankListAdapter;Ljr2;)V

    .line 357
    .line 358
    .line 359
    move-object/from16 v0, p3

    .line 360
    .line 361
    invoke-static {v1, v2, v0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    if-ne v0, v1, :cond_f

    .line 370
    .line 371
    return-object v0

    .line 372
    :cond_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 373
    .line 374
    return-object v0
.end method
