.class public final Lteam/opay/pay/payment/betting/NewUserTaskPicDialogAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "NewUserTaskPicDialogAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/NewUserTaskPicDialogAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "item",
        "",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;)V",
        "",
        "a",
        "I",
        "corners",
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
    const/4 v0, 0x2

    .line 6
    sget v1, Lteam/opay/pay/R$layout;->fragment_new_user_task_dialog_item_more_pic:I

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    sget v1, Lteam/opay/pay/R$layout;->fragment_new_user_task_dialog_item_pic:I

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 15
    .line 16
    .line 17
    const/high16 v0, 0x41000000    # 8.0f

    .line 18
    .line 19
    invoke-static {v0}, Lkmf;->f(F)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    float-to-int v0, v0

    .line 24
    iput v0, p0, Lteam/opay/pay/payment/betting/NewUserTaskPicDialogAdapter;->a:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/NewUserTaskPicDialogAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;)V
    .locals 11
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Lteam/opay/pay/R$id;->holder:I

    .line 12
    .line 13
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 18
    .line 19
    .line 20
    sget v0, Lteam/opay/pay/R$id;->ivLock:I

    .line 21
    .line 22
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;->c()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 27
    .line 28
    .line 29
    sget v0, Lteam/opay/pay/R$id;->ivPic:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "getView(...)"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move-object v1, p1

    .line 41
    check-cast v1, Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {p2}, Lteam/opay/pay/payment/betting/NewUserTaskDisplayCustomGuideInfo;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget v3, p0, Lteam/opay/pay/payment/betting/NewUserTaskPicDialogAdapter;->a:I

    .line 48
    .line 49
    const/16 v9, 0x7c

    .line 50
    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    invoke-static/range {v1 .. v10}, Lkzf;->i(Landroid/widget/ImageView;Ljava/lang/String;IIIZZZILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
