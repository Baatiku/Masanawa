.class public final Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "OpayTransferBeneficiaryListAdapter.kt"


# annotations
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
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B#\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u0017\u0010\u0008\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\"\u001a\u0004\u0008(\u0010$R0\u00100\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\r0)8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R0\u00104\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\r0)8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010+\u001a\u0004\u00082\u0010-\"\u0004\u00083\u0010/R8\u0010<\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\r\u0018\u0001058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R$\u0010D\u001a\u0004\u0018\u00010=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010C\u00a8\u0006E"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "",
        "type",
        "",
        "isFromAA",
        "onlySearch",
        "<init>",
        "(IZZ)V",
        "helper",
        "data",
        "",
        "s",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V",
        "Lteam/opay/core/android/views/ResizableImageView;",
        "role_tag",
        "item",
        "J",
        "(Lteam/opay/core/android/views/ResizableImageView;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V",
        "Landroid/view/View;",
        "view",
        "E",
        "(Landroid/view/View;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V",
        "x",
        "(Landroid/view/View;)I",
        "a",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "b",
        "Z",
        "y",
        "()Z",
        "setFromAA",
        "(Z)V",
        "c",
        "w",
        "Lkotlin/Function1;",
        "d",
        "Lkotlin/jvm/functions/Function1;",
        "getItemClicked",
        "()Lkotlin/jvm/functions/Function1;",
        "C",
        "(Lkotlin/jvm/functions/Function1;)V",
        "itemClicked",
        "e",
        "getDeleteIconClicked",
        "A",
        "deleteIconClicked",
        "Lkotlin/Function2;",
        "f",
        "Lkotlin/jvm/functions/Function2;",
        "getFavorityClicked",
        "()Lkotlin/jvm/functions/Function2;",
        "B",
        "(Lkotlin/jvm/functions/Function2;)V",
        "favorityClicked",
        "",
        "g",
        "Ljava/lang/String;",
        "getSearchKey",
        "()Ljava/lang/String;",
        "D",
        "(Ljava/lang/String;)V",
        "searchKey",
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
.field public a:I

.field public b:Z

.field public final c:Z

.field public d:Lkotlin/jvm/functions/Function1;
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

.field public e:Lkotlin/jvm/functions/Function1;
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

.field public f:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
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


# direct methods
.method public constructor <init>(IZZ)V
    .locals 1

    .line 2
    sget v0, Lteam/opay/pay/R$layout;->item_transfer_account_list:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 3
    iput p1, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->a:I

    .line 4
    iput-boolean p2, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->b:Z

    .line 5
    iput-boolean p3, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->c:Z

    .line 6
    new-instance p1, Lpta;

    invoke-direct {p1}, Lpta;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->d:Lkotlin/jvm/functions/Function1;

    .line 7
    new-instance p1, Lqta;

    invoke-direct {p1}, Lqta;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;-><init>(IZZ)V

    return-void
.end method

.method public static final F(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;ZLteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->f:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/widget/PopupWindow;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 19
    .line 20
    .line 21
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static final G(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;ZLteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->f:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/widget/PopupWindow;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 19
    .line 20
    .line 21
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static final H(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/widget/PopupWindow;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static final I(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/widget/PopupWindow;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static synthetic k(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->I(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;ZLteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->G(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;ZLteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;ZLteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->F(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;ZLteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->t(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->H(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->z(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->u(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->v(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final t(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->d:Lkotlin/jvm/functions/Function1;

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

.method public static final u(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2, p1}, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->E(Landroid/view/View;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final v(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final z(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final A(Lkotlin/jvm/functions/Function1;)V
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
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->e:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method

.method public final B(Lkotlin/jvm/functions/Function2;)V
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
            "Ljava/lang/Boolean;",
            "-",
            "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->f:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final C(Lkotlin/jvm/functions/Function1;)V
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
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->d:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method

.method public final D(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final E(Landroid/view/View;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V
    .locals 7

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->a:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->isFavourite()Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 28
    :goto_1
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 29
    .line 30
    sget v4, Lteam/opay/pay/R$layout;->pop_window_beneficiary_info:I

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lbub;->bind(Landroid/view/View;)Lbub;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "bind(...)"

    .line 42
    .line 43
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v5, v4, Lbub;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 49
    .line 50
    sget v6, Lteam/opay/pay/R$mipmap;->beneficiary_not_favority:I

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 53
    .line 54
    .line 55
    iget-object v5, v4, Lbub;->g:Landroid/widget/TextView;

    .line 56
    .line 57
    sget v6, Lteam/opay/pay/R$string;->osdk_remove_favorites:I

    .line 58
    .line 59
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    iget-object v5, v4, Lbub;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 68
    .line 69
    sget v6, Lteam/opay/pay/R$mipmap;->beneficiary_favority:I

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 72
    .line 73
    .line 74
    iget-object v5, v4, Lbub;->g:Landroid/widget/TextView;

    .line 75
    .line 76
    sget v6, Lteam/opay/pay/R$string;->osdk_add_to_favorites:I

    .line 77
    .line 78
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    :goto_2
    iget-object v5, v4, Lbub;->g:Landroid/widget/TextView;

    .line 86
    .line 87
    const-string v6, "favTv"

    .line 88
    .line 89
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v6, Lrta;

    .line 93
    .line 94
    invoke-direct {v6, p0, v1, p2, v0}, Lrta;-><init>(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;ZLteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v5, v6}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 98
    .line 99
    .line 100
    iget-object v5, v4, Lbub;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 101
    .line 102
    const-string v6, "favTag"

    .line 103
    .line 104
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance v6, Lsta;

    .line 108
    .line 109
    invoke-direct {v6, p0, v1, p2, v0}, Lsta;-><init>(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;ZLteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v5, v6}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 113
    .line 114
    .line 115
    iget-object v5, v4, Lbub;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 116
    .line 117
    const-string v6, "deleteTag"

    .line 118
    .line 119
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v6, Ltta;

    .line 123
    .line 124
    invoke-direct {v6, p0, p2, v0}, Ltta;-><init>(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v5, v6}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 128
    .line 129
    .line 130
    iget-object v4, v4, Lbub;->d:Landroid/widget/TextView;

    .line 131
    .line 132
    const-string v5, "deleteTv"

    .line 133
    .line 134
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance v5, Luta;

    .line 138
    .line 139
    invoke-direct {v5, p0, p2, v0}, Luta;-><init>(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v4, v5}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 143
    .line 144
    .line 145
    if-eqz v1, :cond_3

    .line 146
    .line 147
    const/16 p2, 0xdc

    .line 148
    .line 149
    :goto_3
    invoke-static {p2}, Ljmf;->d(I)I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    goto :goto_4

    .line 154
    :cond_3
    const/16 p2, 0xb4

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :goto_4
    new-instance v1, Landroid/widget/PopupWindow;

    .line 158
    .line 159
    const/4 v4, -0x2

    .line 160
    invoke-direct {v1, v2, p2, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 161
    .line 162
    .line 163
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 164
    .line 165
    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 175
    .line 176
    .line 177
    const/16 v2, 0x8

    .line 178
    .line 179
    invoke-static {v2}, Ljmf;->d(I)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    int-to-float v2, v2

    .line 184
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->x(Landroid/view/View;)I

    .line 188
    .line 189
    .line 190
    const/16 v2, 0x10

    .line 191
    .line 192
    invoke-static {v2}, Ljmf;->d(I)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    sub-int/2addr p2, v2

    .line 197
    neg-int p2, p2

    .line 198
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->x(Landroid/view/View;)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    invoke-virtual {v1, p1, p2, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 203
    .line 204
    .line 205
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 206
    .line 207
    return-void
.end method

.method public final J(Lteam/opay/core/android/views/ResizableImageView;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getGrowthLevelLogo()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getGrowthLevelLogo()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v0, 0x2

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p1, p2, v2, v0, v1}, Lkzf;->k(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :goto_1
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->s(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V
    .locals 12
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
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    sget v1, Lteam/opay/pay/R$id;->icon:I

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v2, v1

    .line 18
    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 19
    .line 20
    sget v1, Lteam/opay/pay/R$id;->title:I

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    sget v3, Lteam/opay/pay/R$id;->role_tag:I

    .line 29
    .line 30
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    move-object v9, v3

    .line 35
    check-cast v9, Lteam/opay/core/android/views/ResizableImageView;

    .line 36
    .line 37
    sget v3, Lteam/opay/pay/R$id;->content:I

    .line 38
    .line 39
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    move-object v10, v3

    .line 44
    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    sget v3, Lteam/opay/pay/R$id;->btn_info:I

    .line 47
    .line 48
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    invoke-static {v3}, Lteam/opay/core/android/ContextKt;->j(Landroid/content/Context;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :cond_1
    iget-boolean v3, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->b:Z

    .line 71
    .line 72
    const/4 v11, 0x1

    .line 73
    if-eqz v3, :cond_6

    .line 74
    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhotoUrl()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    sget v4, Lteam/opay/pay/R$mipmap;->osdk_ic_transfer_contact_avatar:I

    .line 82
    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v2, v3, v4}, Lme7;->a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-eqz v2, :cond_5

    .line 95
    .line 96
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_3

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    iget-object v4, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->g:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-nez v2, :cond_4

    .line 116
    .line 117
    const-string v2, ""

    .line 118
    .line 119
    :cond_4
    move-object v5, v2

    .line 120
    const/4 v7, 0x4

    .line 121
    const/4 v8, 0x0

    .line 122
    const/4 v6, 0x0

    .line 123
    move-object v3, v1

    .line 124
    invoke-static/range {v3 .. v8}, Lxie;->g(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    :goto_1
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->g:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhone()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-static {v2}, Lsob;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-static {v10, v1, v2, v11}, Lxie;->f(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_6
    if-eqz v2, :cond_7

    .line 152
    .line 153
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhotoUrl()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    sget v4, Lteam/opay/pay/R$mipmap;->bank_default_icon:I

    .line 158
    .line 159
    const/4 v6, 0x4

    .line 160
    const/4 v7, 0x0

    .line 161
    const/4 v5, 0x0

    .line 162
    invoke-static/range {v2 .. v7}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    if-eqz v2, :cond_9

    .line 170
    .line 171
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-nez v2, :cond_8

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 182
    .line 183
    .line 184
    iget-object v4, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->g:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    const/4 v7, 0x4

    .line 191
    const/4 v8, 0x0

    .line 192
    const/4 v6, 0x0

    .line 193
    move-object v3, v1

    .line 194
    invoke-static/range {v3 .. v8}, Lxie;->g(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_9
    :goto_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    :goto_3
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->g:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountNo()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v2, "  "

    .line 226
    .line 227
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-static {v10, v1, v2, v11}, Lxie;->f(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 238
    .line 239
    .line 240
    :goto_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    new-instance v1, Lnta;

    .line 244
    .line 245
    invoke-direct {v1, p0, p2}, Lnta;-><init>(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 249
    .line 250
    .line 251
    iget v0, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->a:I

    .line 252
    .line 253
    const/4 v1, 0x3

    .line 254
    if-eq v0, v1, :cond_b

    .line 255
    .line 256
    iget-boolean v0, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->c:Z

    .line 257
    .line 258
    if-eqz v0, :cond_a

    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_a
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 265
    .line 266
    .line 267
    new-instance v0, Lota;

    .line 268
    .line 269
    invoke-direct {v0, p0, p2}, Lota;-><init>(Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_b
    :goto_5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 280
    .line 281
    .line 282
    :goto_6
    iget-boolean p1, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->b:Z

    .line 283
    .line 284
    if-eqz p1, :cond_c

    .line 285
    .line 286
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v9, p2}, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->J(Lteam/opay/core/android/views/ResizableImageView;Lteam/opay/pay/transfer/contact/bean/TransferContactData;)V

    .line 290
    .line 291
    .line 292
    :cond_c
    :goto_7
    return-void
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final x(Landroid/view/View;)I
    .locals 2

    .line 1
    sget-object v0, Ld00;->a:Ld00;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {v0}, Ljmf;->q(Landroid/content/Context;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    invoke-static {p1}, Ljmf;->b(Landroid/view/View;)Landroid/graphics/RectF;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 19
    .line 20
    sub-float/2addr v1, p1

    .line 21
    const/16 p1, 0x32

    .line 22
    .line 23
    invoke-static {p1}, Ljmf;->d(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-float p1, p1

    .line 28
    sub-float/2addr v1, p1

    .line 29
    invoke-static {v0}, Lteam/opay/swarmfoundation/utils/StatusBarUtil;->d(Landroid/content/Context;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    int-to-float p1, p1

    .line 34
    sub-float/2addr v1, p1

    .line 35
    const/4 p1, 0x0

    .line 36
    cmpl-float p1, v1, p1

    .line 37
    .line 38
    if-ltz p1, :cond_0

    .line 39
    .line 40
    const/16 p1, 0x9

    .line 41
    .line 42
    invoke-static {p1}, Ljmf;->d(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :cond_0
    const/16 p1, -0x94

    .line 48
    .line 49
    invoke-static {p1}, Ljmf;->d(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    return p1
.end method

.method public final y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/tabs/ac/OpayTransferBeneficiaryListAdapter;->b:Z

    .line 2
    .line 3
    return v0
.end method
