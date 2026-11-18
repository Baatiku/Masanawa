.class public final Lcashier/model/CashierViewModel_Factory;
.super Ljava/lang/Object;
.source "CashierViewModel_Factory.java"

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


# direct methods
.method public constructor <init>(Ll3c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3c<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcashier/model/CashierViewModel_Factory;->a:Ll3c;

    .line 5
    .line 6
    return-void
.end method

.method public static b(Landroid/app/Application;)Lcashier/model/CashierViewModel;
    .locals 1

    .line 1
    new-instance v0, Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcashier/model/CashierViewModel;-><init>(Landroid/app/Application;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Lcashier/model/CashierViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/model/CashierViewModel_Factory;->a:Ll3c;

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
    invoke-static {v0}, Lcashier/model/CashierViewModel_Factory;->b(Landroid/app/Application;)Lcashier/model/CashierViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcashier/model/CashierViewModel_Factory;->a()Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
