.class final Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultPrintProvider.kt"

# interfaces
.implements Lhm6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/function/DefaultPrintProvider;->doPrint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lhm6<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "code",
        "",
        "<anonymous parameter 1>",
        "",
        "deviceCode",
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
.field final synthetic this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;


# direct methods
.method public constructor <init>(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->invoke(ILjava/lang/String;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;I)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {p2}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$getPrintInfo(Lteam/opay/spos/printer/function/DefaultPrintProvider;)Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {v0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$getCurrentPrintIndex$p(Lteam/opay/spos/printer/function/DefaultPrintProvider;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->setPrintCouplet(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-virtual {p2, p1, p3}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->finishFunction(II)V

    :cond_1
    if-nez p1, :cond_6

    .line 4
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {p2}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$getCurrentPrintIndex$p(Lteam/opay/spos/printer/function/DefaultPrintProvider;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 5
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {p2}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$isFirstPrintSuccess$p(Lteam/opay/spos/printer/function/DefaultPrintProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    sget-object p2, Lteam/opay/spos/printer/internal/PrintActionDispatch;->a:Lteam/opay/spos/printer/internal/PrintActionDispatch;

    iget-object v1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {v1, p1, p3}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$getFinishPrintInfo(Lteam/opay/spos/printer/function/DefaultPrintProvider;II)Lteam/opay/spos/printer/internal/PosPrintFinishInfo;

    move-result-object v1

    invoke-virtual {p2, v1}, Lteam/opay/spos/printer/internal/PrintActionDispatch;->c(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V

    .line 7
    :cond_2
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {p2}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$getPrintInfo(Lteam/opay/spos/printer/function/DefaultPrintProvider;)Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    sget-object v1, Lteam/opay/spos/printer/function/PrintRecordReport;->a:Lteam/opay/spos/printer/function/PrintRecordReport;

    invoke-virtual {v1, p2, p1, p3}, Lteam/opay/spos/printer/function/PrintRecordReport;->c(Lteam/opay/spos/printer/api/PosPrintExtendInfo;II)V

    .line 8
    :cond_3
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {p2}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$getCurrentPrintIndex$p(Lteam/opay/spos/printer/function/DefaultPrintProvider;)I

    move-result p2

    iget-object v1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {v1}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$getPrintCount(Lteam/opay/spos/printer/function/DefaultPrintProvider;)I

    move-result v1

    if-ge p2, v1, :cond_5

    .line 9
    iget-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {p1}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$showPrintSecondCueView(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V

    .line 11
    iget-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {p1}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$getCurrentPrintIndex$p(Lteam/opay/spos/printer/function/DefaultPrintProvider;)I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$setCurrentPrintIndex$p(Lteam/opay/spos/printer/function/DefaultPrintProvider;I)V

    goto :goto_1

    .line 12
    :cond_4
    iget-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    const p2, -0x186a0

    invoke-virtual {p1, v0, p2}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->finishFunction(II)V

    goto :goto_1

    .line 13
    :cond_5
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-virtual {p2, p1, p3}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->finishFunction(II)V

    goto :goto_1

    .line 14
    :cond_6
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$doPrint$3;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-virtual {p2, p1, p3}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->finishFunction(II)V

    :goto_1
    return-void
.end method
