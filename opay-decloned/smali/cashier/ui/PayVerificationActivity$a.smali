.class public final Lcashier/ui/PayVerificationActivity$a;
.super Ljava/lang/Object;
.source "PayVerificationActivity.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/ui/PayVerificationActivity;->onCreate(Landroid/os/Bundle;)V
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcashier/util/PayVerifyEvent;",
        "event",
        "",
        "c",
        "(Lcashier/util/PayVerifyEvent;Ljr2;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic a:Lcashier/ui/PayVerificationActivity;


# direct methods
.method public constructor <init>(Lcashier/ui/PayVerificationActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/ui/PayVerificationActivity$a;->a:Lcashier/ui/PayVerificationActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lcashier/util/PayVerifyEvent;Ljr2;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcashier/util/PayVerifyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/util/PayVerifyEvent;",
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
    iget-object p2, p0, Lcashier/ui/PayVerificationActivity$a;->a:Lcashier/ui/PayVerificationActivity;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lcashier/ui/PayVerificationActivity;->A(Lcashier/ui/PayVerificationActivity;Lcashier/util/PayVerifyEvent;)V

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
    check-cast p1, Lcashier/util/PayVerifyEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcashier/ui/PayVerificationActivity$a;->c(Lcashier/util/PayVerifyEvent;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
