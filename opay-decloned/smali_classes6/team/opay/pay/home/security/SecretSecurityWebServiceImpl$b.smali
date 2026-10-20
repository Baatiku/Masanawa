.class public final Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl$b;
.super Ljava/lang/Object;
.source "SecretSecurityWebService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl;->d(Ljava/util/Map;)Lteam/opay/core/android/arch/LiveDataCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lteam/opay/pay/home/security/SecretSecurityData;",
        "Lteam/opay/pay/home/security/SecretSecurityData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002 \u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002`\u0003J\u0018\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0096\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/pay/home/security/SecretSecurityWebServiceImpl$b",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/home/security/SecretSecurityData;",
        "Lteam/opay/core/android/arch/ResponseAdapter;",
        "response",
        "a",
        "(Lteam/opay/pay/home/security/SecretSecurityData;)Lteam/opay/pay/home/security/SecretSecurityData;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lteam/opay/pay/home/security/SecretSecurityData;)Lteam/opay/pay/home/security/SecretSecurityData;
    .locals 1

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/home/security/SecretSecurityData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/security/SecretSecurityWebServiceImpl$b;->a(Lteam/opay/pay/home/security/SecretSecurityData;)Lteam/opay/pay/home/security/SecretSecurityData;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
