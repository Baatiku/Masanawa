.class final Lteam/opay/spos/printer/OPayTicketComposer$Builder$verifyImageDownLoad$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OPayTicketComposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/OPayTicketComposer$Builder;->t(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "isLoadSuccess",
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
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $imageIndex:I

.field final synthetic this$0:Lteam/opay/spos/printer/OPayTicketComposer$Builder;


# direct methods
.method public constructor <init>(Lteam/opay/spos/printer/OPayTicketComposer$Builder;ILkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/spos/printer/OPayTicketComposer$Builder;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/OPayTicketComposer$Builder$verifyImageDownLoad$1;->this$0:Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    .line 2
    .line 3
    iput p2, p0, Lteam/opay/spos/printer/OPayTicketComposer$Builder$verifyImageDownLoad$1;->$imageIndex:I

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/spos/printer/OPayTicketComposer$Builder$verifyImageDownLoad$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/OPayTicketComposer$Builder$verifyImageDownLoad$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lteam/opay/spos/printer/OPayTicketComposer$Builder$verifyImageDownLoad$1;->this$0:Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    invoke-static {v0}, Lteam/opay/spos/printer/OPayTicketComposer$Builder;->b(Lteam/opay/spos/printer/OPayTicketComposer$Builder;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    if-nez p1, :cond_0

    .line 3
    iget v0, p0, Lteam/opay/spos/printer/OPayTicketComposer$Builder$verifyImageDownLoad$1;->$imageIndex:I

    if-ltz v0, :cond_0

    .line 4
    iget-object v0, p0, Lteam/opay/spos/printer/OPayTicketComposer$Builder$verifyImageDownLoad$1;->this$0:Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    invoke-static {v0}, Lteam/opay/spos/printer/OPayTicketComposer$Builder;->a(Lteam/opay/spos/printer/OPayTicketComposer$Builder;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lteam/opay/spos/printer/OPayTicketComposer$Builder$verifyImageDownLoad$1;->$imageIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v0, p0, Lteam/opay/spos/printer/OPayTicketComposer$Builder$verifyImageDownLoad$1;->$callback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object p1, p0, Lteam/opay/spos/printer/OPayTicketComposer$Builder$verifyImageDownLoad$1;->this$0:Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    invoke-virtual {p1}, Lteam/opay/spos/printer/OPayTicketComposer$Builder;->q()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    return-void
.end method
