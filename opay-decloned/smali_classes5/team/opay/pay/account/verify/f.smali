.class public final synthetic Lteam/opay/pay/account/verify/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lteam/opay/pay/account/verify/VerifyViewModel;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lteam/opay/pay/account/verify/BaseVerifyFragment;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/pay/account/verify/VerifyViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/BaseVerifyFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/account/verify/f;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/pay/account/verify/f;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    iput-object p3, p0, Lteam/opay/pay/account/verify/f;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lteam/opay/pay/account/verify/f;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lteam/opay/pay/account/verify/f;->e:Lteam/opay/pay/account/verify/BaseVerifyFragment;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/f;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/account/verify/f;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/account/verify/f;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/account/verify/f;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/account/verify/f;->e:Lteam/opay/pay/account/verify/BaseVerifyFragment;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Lteam/opay/core/android/arch/Resource;

    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/account/verify/VerifyViewModel$callOutPhone$1;->c(Lteam/opay/pay/account/verify/VerifyViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/verify/BaseVerifyFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
