.class public final Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$a;
.super Ljava/lang/Object;
.source "MessageMainActivityDelegate.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;->onCreate(Landroid/os/Bundle;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "",
        "c",
        "(ZLjr2;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;


# direct methods
.method public constructor <init>(Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$a;->a:Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(ZLjr2;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
    iget-object p1, p0, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$a;->a:Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;->access$reqNum(Lteam/opay/pay/message/delegate/MessageMainActivityDelegate;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/delegate/MessageMainActivityDelegate$a;->c(ZLjr2;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
