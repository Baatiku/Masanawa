.class final Lcashier/ui/PayMethodFragment$onViewCreated$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PayMethodFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/ui/PayMethodFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcashier/data/PaymentItem;",
        "Ljava/util/List<",
        "+",
        "Lcashier/data/PaymentItem;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "selectItem",
        "Lcashier/data/PaymentItem;",
        "<anonymous parameter 1>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcashier/ui/PayMethodFragment;


# direct methods
.method public constructor <init>(Lcashier/ui/PayMethodFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/ui/PayMethodFragment$onViewCreated$4$1;->this$0:Lcashier/ui/PayMethodFragment;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Lcashier/data/PaymentItem;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcashier/ui/PayMethodFragment$onViewCreated$4$1;->invoke(Lcashier/data/PaymentItem;Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcashier/data/PaymentItem;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcashier/data/PaymentItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/data/PaymentItem;",
            "Ljava/util/List<",
            "Lcashier/data/PaymentItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcashier/ui/PayMethodFragment$onViewCreated$4$1;->this$0:Lcashier/ui/PayMethodFragment;

    invoke-virtual {p2}, Lcashier/ui/PayMethodFragment;->K()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2
    iget-object p2, p0, Lcashier/ui/PayMethodFragment$onViewCreated$4$1;->this$0:Lcashier/ui/PayMethodFragment;

    invoke-static {p2, p1}, Lcashier/ui/PayMethodFragment;->H(Lcashier/ui/PayMethodFragment;Lcashier/data/PaymentItem;)V

    .line 3
    iget-object p2, p0, Lcashier/ui/PayMethodFragment$onViewCreated$4$1;->this$0:Lcashier/ui/PayMethodFragment;

    invoke-static {p2}, Lcashier/ui/PayMethodFragment;->E(Lcashier/ui/PayMethodFragment;)Lr8b;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Lr8b;->b:Lcom/google/android/material/button/MaterialButton;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcashier/data/PaymentItem;->h()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 4
    :cond_2
    iget-object p2, p0, Lcashier/ui/PayMethodFragment$onViewCreated$4$1;->this$0:Lcashier/ui/PayMethodFragment;

    invoke-virtual {p2}, Lcashier/ui/PayMethodFragment;->J()Lkotlin/jvm/functions/Function2;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcashier/ui/PayMethodFragment$onViewCreated$4$1;->this$0:Lcashier/ui/PayMethodFragment;

    invoke-virtual {v0}, Lcashier/ui/PayMethodFragment;->I()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_3
    iget-object p1, p0, Lcashier/ui/PayMethodFragment$onViewCreated$4$1;->this$0:Lcashier/ui/PayMethodFragment;

    invoke-virtual {p1}, Lcashier/ui/BaseBSFragment;->dismiss()V

    :goto_1
    return-void
.end method
