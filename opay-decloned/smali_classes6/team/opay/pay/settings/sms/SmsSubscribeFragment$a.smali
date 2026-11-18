.class public final Lteam/opay/pay/settings/sms/SmsSubscribeFragment$a;
.super Ljava/lang/Object;
.source "SmsSubscribeFragment.kt"

# interfaces
.implements Lteam/opay/pay/home/security/BiometricSettingClient$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/settings/sms/SmsSubscribeFragment;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "team/opay/pay/settings/sms/SmsSubscribeFragment$a",
        "Lteam/opay/pay/home/security/BiometricSettingClient$a;",
        "",
        "c",
        "()V",
        "a",
        "",
        "scene",
        "d",
        "(Ljava/lang/String;)V",
        "b",
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
.field public final synthetic a:Lteam/opay/pay/settings/sms/SmsSubscribeFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/settings/sms/SmsSubscribeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/settings/sms/SmsSubscribeFragment$a;->a:Lteam/opay/pay/settings/sms/SmsSubscribeFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsSubscribeFragment$a;->a:Lteam/opay/pay/settings/sms/SmsSubscribeFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/settings/sms/SmsSubscribeFragment;->e0(Lteam/opay/pay/settings/sms/SmsSubscribeFragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lx7b;->a:Lx7b;

    .line 7
    .line 8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    const-string v1, "result"

    .line 11
    .line 12
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Lkotlin/Pair;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    const-string v0, "COMMON_payment_fingerprint_verify_result"

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/pay/settings/sms/SmsSubscribeFragment$a;->a:Lteam/opay/pay/settings/sms/SmsSubscribeFragment;

    .line 28
    .line 29
    const-string v0, "fingerprint"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lteam/opay/pay/settings/sms/SmsSubscribeFragment;->f0(Lteam/opay/pay/settings/sms/SmsSubscribeFragment;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(ZZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/security/BiometricSettingClient$a$a;->d(Lteam/opay/pay/home/security/BiometricSettingClient$a;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public f(ZZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/security/BiometricSettingClient$a$a;->b(Lteam/opay/pay/home/security/BiometricSettingClient$a;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
