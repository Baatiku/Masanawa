.class public final Lteam/opay/spos/base/hilt/CommonProviderRepository_Factory;
.super Ljava/lang/Object;
.source "CommonProviderRepository_Factory.java"

# interfaces
.implements Lm3c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm3c;"
    }
.end annotation


# instance fields
.field public final a:Ll3c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3c<",
            "Lteam/opay/core/http/arch/AppExecutors;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ll3c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3c<",
            "Lnv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll3c;Ll3c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3c<",
            "Lteam/opay/core/http/arch/AppExecutors;",
            ">;",
            "Ll3c<",
            "Lnv;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/spos/base/hilt/CommonProviderRepository_Factory;->a:Ll3c;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/spos/base/hilt/CommonProviderRepository_Factory;->b:Ll3c;

    .line 7
    .line 8
    return-void
.end method

.method public static b(Lteam/opay/core/http/arch/AppExecutors;Lnv;)Lteam/opay/spos/base/hilt/CommonProviderRepository;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/spos/base/hilt/CommonProviderRepository;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lteam/opay/spos/base/hilt/CommonProviderRepository;-><init>(Lteam/opay/core/http/arch/AppExecutors;Lnv;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Lteam/opay/spos/base/hilt/CommonProviderRepository;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/spos/base/hilt/CommonProviderRepository_Factory;->a:Ll3c;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3c;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/http/arch/AppExecutors;

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/spos/base/hilt/CommonProviderRepository_Factory;->b:Ll3c;

    .line 10
    .line 11
    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lnv;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lteam/opay/spos/base/hilt/CommonProviderRepository_Factory;->b(Lteam/opay/core/http/arch/AppExecutors;Lnv;)Lteam/opay/spos/base/hilt/CommonProviderRepository;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/base/hilt/CommonProviderRepository_Factory;->a()Lteam/opay/spos/base/hilt/CommonProviderRepository;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
