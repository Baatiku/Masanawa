.class public final Lcom/opay/team/newhome/finance/FinNewFragment$b;
.super Ljava/lang/Object;
.source "FinNewFragment.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/finance/FinNewFragment;->addObserver()V
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
.field public final synthetic a:Lcom/opay/team/newhome/finance/FinNewFragment;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/finance/FinNewFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/finance/FinNewFragment$b;->a:Lcom/opay/team/newhome/finance/FinNewFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/opay/team/newhome/finance/FinNewFragment$b;->a:Lcom/opay/team/newhome/finance/FinNewFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/opay/team/newhome/finance/FinNewFragment;->access$showNoticeIfNeed(Lcom/opay/team/newhome/finance/FinNewFragment;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
