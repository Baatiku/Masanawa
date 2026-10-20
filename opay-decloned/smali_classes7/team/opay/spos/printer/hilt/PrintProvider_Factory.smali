.class public final Lteam/opay/spos/printer/hilt/PrintProvider_Factory;
.super Ljava/lang/Object;
.source "PrintProvider_Factory.java"

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
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ll3c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3c<",
            "Lteam/opay/spos/printer/hilt/PrintProviderRepository;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ll3c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3c<",
            "Landroidx/lifecycle/SavedStateHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll3c;Ll3c;Ll3c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3c<",
            "Landroid/app/Application;",
            ">;",
            "Ll3c<",
            "Lteam/opay/spos/printer/hilt/PrintProviderRepository;",
            ">;",
            "Ll3c<",
            "Landroidx/lifecycle/SavedStateHandle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/spos/printer/hilt/PrintProvider_Factory;->a:Ll3c;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/spos/printer/hilt/PrintProvider_Factory;->b:Ll3c;

    .line 7
    .line 8
    iput-object p3, p0, Lteam/opay/spos/printer/hilt/PrintProvider_Factory;->c:Ll3c;

    .line 9
    .line 10
    return-void
.end method

.method public static b(Landroid/app/Application;Lteam/opay/spos/printer/hilt/PrintProviderRepository;Landroidx/lifecycle/SavedStateHandle;)Lteam/opay/spos/printer/hilt/PrintProvider;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/spos/printer/hilt/PrintProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lteam/opay/spos/printer/hilt/PrintProvider;-><init>(Landroid/app/Application;Lteam/opay/spos/printer/hilt/PrintProviderRepository;Landroidx/lifecycle/SavedStateHandle;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Lteam/opay/spos/printer/hilt/PrintProvider;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/hilt/PrintProvider_Factory;->a:Ll3c;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3c;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/Application;

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/spos/printer/hilt/PrintProvider_Factory;->b:Ll3c;

    .line 10
    .line 11
    invoke-interface {v1}, Ll3c;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lteam/opay/spos/printer/hilt/PrintProviderRepository;

    .line 16
    .line 17
    iget-object v2, p0, Lteam/opay/spos/printer/hilt/PrintProvider_Factory;->c:Ll3c;

    .line 18
    .line 19
    invoke-interface {v2}, Ll3c;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroidx/lifecycle/SavedStateHandle;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lteam/opay/spos/printer/hilt/PrintProvider_Factory;->b(Landroid/app/Application;Lteam/opay/spos/printer/hilt/PrintProviderRepository;Landroidx/lifecycle/SavedStateHandle;)Lteam/opay/spos/printer/hilt/PrintProvider;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/printer/hilt/PrintProvider_Factory;->a()Lteam/opay/spos/printer/hilt/PrintProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
