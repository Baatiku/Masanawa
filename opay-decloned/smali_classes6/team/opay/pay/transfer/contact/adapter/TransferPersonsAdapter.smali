.class public final Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "TransferPersonsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        ">;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0018\u00002\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001B\u001b\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00042\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ/\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u0017\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ+\u0010!\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u00122\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001a2\u0008\u0010 \u001a\u0004\u0018\u00010\u001aH\u0002\u00a2\u0006\u0004\u0008!\u0010\"R\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R*\u00102\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R0\u0010:\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\r\u0018\u0001038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R*\u0010>\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010-\u001a\u0004\u0008<\u0010/\"\u0004\u0008=\u00101R*\u0010B\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010-\u001a\u0004\u0008@\u0010/\"\u0004\u0008A\u00101R$\u0010I\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR$\u0010M\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010D\u001a\u0004\u0008K\u0010F\"\u0004\u0008L\u0010H\u00a8\u0006N"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "",
        "from",
        "Lteam/opay/pay/transfer/contact/TransferContactViewModel;",
        "viewModel",
        "<init>",
        "(ILteam/opay/pay/transfer/contact/TransferContactViewModel;)V",
        "helper",
        "item",
        "",
        "t",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "ivUser",
        "Landroid/widget/TextView;",
        "tvName",
        "tvNumber",
        "q",
        "(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V",
        "r",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V",
        "o",
        "",
        "phone",
        "y",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "view",
        "role",
        "roleLable",
        "p",
        "(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V",
        "a",
        "I",
        "getFrom",
        "()I",
        "b",
        "Lteam/opay/pay/transfer/contact/TransferContactViewModel;",
        "getViewModel",
        "()Lteam/opay/pay/transfer/contact/TransferContactViewModel;",
        "Lkotlin/Function0;",
        "c",
        "Lkotlin/jvm/functions/Function0;",
        "getOnMoreClickedListener",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnMoreClickedListener",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onMoreClickedListener",
        "Lkotlin/Function1;",
        "d",
        "Lkotlin/jvm/functions/Function1;",
        "getOnDeletedClickedListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnDeletedClickedListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onDeletedClickedListener",
        "e",
        "getOnGridExpendClickListener",
        "B",
        "onGridExpendClickListener",
        "f",
        "getOnPackUpClickedListener",
        "C",
        "onPackUpClickedListener",
        "g",
        "Ljava/lang/String;",
        "x",
        "()Ljava/lang/String;",
        "A",
        "(Ljava/lang/String;)V",
        "btnTag",
        "h",
        "getBtnContent",
        "z",
        "btnContent",
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
.field public final a:I

.field public final b:Lteam/opay/pay/transfer/contact/TransferContactViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lkotlin/jvm/functions/Function0;
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

.field public d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lkotlin/jvm/functions/Function0;
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

.field public f:Lkotlin/jvm/functions/Function0;
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

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILteam/opay/pay/transfer/contact/TransferContactViewModel;)V
    .locals 1
    .param p2    # Lteam/opay/pay/transfer/contact/TransferContactViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    iput p1, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->a:I

    iput-object p2, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->b:Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    const/4 p1, 0x0

    .line 4
    sget p2, Lteam/opay/pay/R$layout;->item_beneficiary_title_section:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x1

    .line 5
    sget p2, Lteam/opay/pay/R$layout;->item_title_letter:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x2

    .line 6
    sget p2, Lteam/opay/pay/R$layout;->item_transfer_persion:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 7
    sget p1, Lteam/opay/pay/R$layout;->item_contact_top_grid:I

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p2, 0x4

    .line 8
    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x5

    .line 9
    sget p2, Lteam/opay/pay/R$layout;->item_transfer_expend_close:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    return-void
.end method

.method public synthetic constructor <init>(ILteam/opay/pay/transfer/contact/TransferContactViewModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;-><init>(ILteam/opay/pay/transfer/contact/TransferContactViewModel;)V

    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->v(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->w(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->s(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->u(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final s(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->d:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static final u(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->c:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static final v(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->e:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static final w(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->f:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final B(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->e:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final C(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->f:Lkotlin/jvm/functions/Function0;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->t(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$id;->btn_act:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    sget v1, Lteam/opay/pay/R$id;->act_tag:I

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/TextView;

    .line 16
    .line 17
    sget-object v1, Lteam/opay/pay/transfer/TransferActCenter;->c:Lteam/opay/pay/transfer/TransferActCenter$Companion;

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/pay/transfer/TransferActCenter$Companion;->a()Lteam/opay/pay/transfer/TransferActCenter;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lteam/opay/pay/transfer/TransferActCenter;->g()Lteam/opay/pay/api/AATransferTrial;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Lteam/opay/pay/api/AATransferTrial;->b()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v2, v3

    .line 36
    :goto_0
    invoke-virtual {v1}, Lteam/opay/pay/transfer/TransferActCenter$Companion;->a()Lteam/opay/pay/transfer/TransferActCenter;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lteam/opay/pay/transfer/TransferActCenter;->g()Lteam/opay/pay/api/AATransferTrial;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4}, Lteam/opay/pay/api/AATransferTrial;->c()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move-object v4, v3

    .line 52
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_9

    .line 69
    .line 70
    :cond_2
    iget-object v5, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->b:Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 71
    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {p2}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {v5, p2}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->K0(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    const/4 v5, 0x1

    .line 87
    if-ne p2, v5, :cond_3

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    if-eqz v2, :cond_9

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-nez p2, :cond_4

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    sget p2, Lteam/opay/pay/R$string;->osdk_invite:I

    .line 103
    .line 104
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    sget v2, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 114
    .line 115
    invoke-static {p2, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    .line 121
    .line 122
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    sget v2, Lteam/opay/pay/R$drawable;->osdk_solid_00b876_24:I

    .line 125
    .line 126
    invoke-static {p2, v2}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    .line 132
    .line 133
    if-eqz v4, :cond_8

    .line 134
    .line 135
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-nez p2, :cond_6

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_6
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Lteam/opay/pay/transfer/TransferActCenter$Companion;->a()Lteam/opay/pay/transfer/TransferActCenter;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p2}, Lteam/opay/pay/transfer/TransferActCenter;->g()Lteam/opay/pay/api/AATransferTrial;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    if-eqz p2, :cond_7

    .line 157
    .line 158
    invoke-virtual {p2}, Lteam/opay/pay/api/AATransferTrial;->c()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    :cond_7
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_8
    :goto_4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 170
    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_9
    :goto_5
    sget p2, Lteam/opay/pay/R$string;->bottom_bar_transfer:I

    .line 174
    .line 175
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    sget v1, Lteam/opay/pay/R$color;->color_00B876:I

    .line 185
    .line 186
    invoke-static {p2, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    .line 192
    .line 193
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 194
    .line 195
    sget v1, Lteam/opay/pay/R$drawable;->osdk_00b876_solide_white_24:I

    .line 196
    .line 197
    invoke-static {p2, v1}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    .line 203
    .line 204
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 208
    .line 209
    .line 210
    :goto_6
    return-void
.end method

.method public final p(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "customer"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz p2, :cond_2

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    :cond_1
    xor-int/lit8 p2, v0, 0x1

    .line 21
    .line 22
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    sget p3, Lteam/opay/pay/R$color;->color_00B876:I

    .line 31
    .line 32
    invoke-static {p2, p3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    sget p3, Lteam/opay/pay/R$drawable;->solid_ccf1e4_50:I

    .line 42
    .line 43
    invoke-static {p2, p3}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    if-eqz p3, :cond_6

    .line 52
    .line 53
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    if-eqz p3, :cond_4

    .line 61
    .line 62
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-nez p2, :cond_5

    .line 67
    .line 68
    :cond_4
    const/4 v0, 0x1

    .line 69
    :cond_5
    xor-int/lit8 p2, v0, 0x1

    .line 70
    .line 71
    invoke-static {p1, p2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    sget p3, Lteam/opay/pay/R$color;->color_3d8afe:I

    .line 80
    .line 81
    invoke-static {p2, p3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    sget p3, Lteam/opay/pay/R$drawable;->solid_d8eaff_50:I

    .line 91
    .line 92
    invoke-static {p2, p3}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    :goto_0
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    return-void
.end method

.method public final q(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p4}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhotoUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Lteam/opay/pay/R$mipmap;->osdk_ic_transfer_contact_avatar:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljpc;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->n(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljpc;

    .line 28
    .line 29
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    .line 30
    .line 31
    const/16 v2, 0x19

    .line 32
    .line 33
    invoke-static {v2}, Ljmf;->d(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->s0(Locf;)Lcom/bumptech/glide/request/RequestOptions;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljpc;->t0(Lcom/bumptech/glide/request/BaseRequestOptions;)Ljpc;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p4}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p4}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-nez p1, :cond_0

    .line 63
    .line 64
    const-string p1, ""

    .line 65
    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final r(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V
    .locals 5

    .line 1
    sget v0, Lteam/opay/pay/R$id;->role_lable:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    iget v1, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->a:I

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getCompletedRegister()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v3, "1"

    .line 19
    .line 20
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getRole()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getRoleLabel()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {p0, v0, v1, v3}, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->p(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    sget v0, Lteam/opay/pay/R$id;->iv_user:I

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "getView(...)"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 59
    .line 60
    sget v3, Lteam/opay/pay/R$id;->tv_name:I

    .line 61
    .line 62
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    check-cast v3, Landroid/widget/TextView;

    .line 70
    .line 71
    sget v4, Lteam/opay/pay/R$id;->tv_number:I

    .line 72
    .line 73
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    check-cast v4, Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {p0, v0, v3, v4, p2}, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->q(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 83
    .line 84
    .line 85
    sget v0, Lteam/opay/pay/R$id;->iv_delete:I

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/4 v1, 0x0

    .line 92
    const/4 v3, 0x1

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    iget v4, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->a:I

    .line 96
    .line 97
    if-ne v4, v3, :cond_1

    .line 98
    .line 99
    const/4 v4, 0x1

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    const/4 v4, 0x0

    .line 102
    :goto_1
    invoke-static {v0, v4}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 103
    .line 104
    .line 105
    new-instance v4, Lu8f;

    .line 106
    .line 107
    invoke-direct {v4, p0, p1}, Lu8f;-><init>(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget v0, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->a:I

    .line 114
    .line 115
    if-ne v0, v2, :cond_3

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->o(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_3
    const/4 p2, 0x3

    .line 122
    if-ne v0, p2, :cond_8

    .line 123
    .line 124
    iget-object p2, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->h:Ljava/lang/String;

    .line 125
    .line 126
    if-eqz p2, :cond_8

    .line 127
    .line 128
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-nez p2, :cond_4

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_4
    sget p2, Lteam/opay/pay/R$id;->btn_act:I

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    check-cast p2, Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->h:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    sget v2, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 157
    .line 158
    invoke-static {v0, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 166
    .line 167
    sget v2, Lteam/opay/pay/R$drawable;->osdk_solid_00b876_24:I

    .line 168
    .line 169
    invoke-static {v0, v2}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 174
    .line 175
    .line 176
    sget p2, Lteam/opay/pay/R$id;->act_tag:I

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    move-object p2, p1

    .line 183
    check-cast p2, Landroid/widget/TextView;

    .line 184
    .line 185
    iget-object p2, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->g:Ljava/lang/String;

    .line 186
    .line 187
    if-eqz p2, :cond_5

    .line 188
    .line 189
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    if-nez p2, :cond_6

    .line 194
    .line 195
    :cond_5
    const/4 v1, 0x1

    .line 196
    :cond_6
    if-nez v1, :cond_7

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_7
    const/4 p1, 0x0

    .line 200
    :goto_2
    check-cast p1, Landroid/widget/TextView;

    .line 201
    .line 202
    if-eqz p1, :cond_8

    .line 203
    .line 204
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 205
    .line 206
    .line 207
    iget-object p2, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->g:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    :cond_8
    :goto_3
    return-void
.end method

.method public t(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V
    .locals 4
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
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
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
    if-eqz p2, :cond_a

    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->b()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_7

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_6

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_4

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    const/4 p2, 0x4

    .line 24
    if-eq v0, p2, :cond_1

    .line 25
    .line 26
    const/4 p2, 0x5

    .line 27
    if-eq v0, p2, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    sget p2, Lteam/opay/pay/R$id;->tv_close:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance p2, Lt8f;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Lt8f;-><init>(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_1
    sget p2, Lteam/opay/pay/R$id;->iv_user:I

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 57
    .line 58
    new-instance v0, Ls8f;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Ls8f;-><init>(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    sget v0, Lteam/opay/pay/R$mipmap;->transfer_contact_expend:I

    .line 67
    .line 68
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 69
    .line 70
    .line 71
    sget p2, Lteam/opay/pay/R$id;->tv_name:I

    .line 72
    .line 73
    const-string v0, "Show more"

    .line 74
    .line 75
    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 76
    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_2
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 85
    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    sget v0, Lteam/opay/pay/R$id;->role_tag:I

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    sget v0, Lteam/opay/pay/R$id;->iv_user:I

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "getView(...)"

    .line 110
    .line 111
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 115
    .line 116
    sget v2, Lteam/opay/pay/R$id;->tv_name:I

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    check-cast v2, Landroid/widget/TextView;

    .line 126
    .line 127
    sget v3, Lteam/opay/pay/R$id;->tv_number:I

    .line 128
    .line 129
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    check-cast p1, Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    check-cast p2, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 143
    .line 144
    invoke-virtual {p0, v0, v2, p1, p2}, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->q(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :cond_4
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    check-cast p2, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 154
    .line 155
    if-nez p2, :cond_5

    .line 156
    .line 157
    return-void

    .line 158
    :cond_5
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->r(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_6
    sget v0, Lteam/opay/pay/R$id;->tv_title:I

    .line 163
    .line 164
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->h()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_7
    sget v0, Lteam/opay/pay/R$id;->title:I

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Landroid/widget/TextView;

    .line 179
    .line 180
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->h()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 192
    .line 193
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 197
    .line 198
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->d()Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    if-eqz v2, :cond_8

    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    goto :goto_0

    .line 209
    :cond_8
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 210
    .line 211
    :goto_0
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 212
    .line 213
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->c()Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    if-eqz v2, :cond_9

    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    goto :goto_1

    .line 224
    :cond_9
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 225
    .line 226
    :goto_1
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 227
    .line 228
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->h()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 233
    .line 234
    .line 235
    sget v0, Lteam/opay/pay/R$id;->btn_more:I

    .line 236
    .line 237
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Landroid/widget/TextView;

    .line 242
    .line 243
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->e()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .line 255
    .line 256
    new-instance p2, Lr8f;

    .line 257
    .line 258
    invoke-direct {p2, p0}, Lr8f;-><init>(Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    .line 263
    .line 264
    :cond_a
    :goto_2
    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "+234"

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-static {p1, v3, v0}, Lkotlin/text/StringsKt;->M0(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    invoke-static {p1}, Lsob;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final z(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/adapter/TransferPersonsAdapter;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
