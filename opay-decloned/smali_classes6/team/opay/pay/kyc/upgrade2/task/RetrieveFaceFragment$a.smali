.class public final Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$a;
.super Ljava/lang/Object;
.source "RetrieveFaceFragment.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->addObserver()V
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
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$a;->a:Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;

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

    .line 1
    iget-object p2, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$a;->a:Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;

    .line 2
    .line 3
    invoke-virtual {p2}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->z0()Lteam/opay/pay/kyc/base/FaceResult;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$a;->a:Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;

    .line 15
    .line 16
    invoke-static {p1, p2}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->s0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Lteam/opay/pay/kyc/base/FaceResult;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$a;->a:Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;

    .line 21
    .line 22
    invoke-static {p1}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->q0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$a;->c(ZLjr2;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
