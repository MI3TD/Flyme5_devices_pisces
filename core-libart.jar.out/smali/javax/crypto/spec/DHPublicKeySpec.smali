.class public Ljavax/crypto/spec/DHPublicKeySpec;
.super Ljava/lang/Object;
.source "DHPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final g:Ljava/math/BigInteger;

.field private final p:Ljava/math/BigInteger;

.field private final y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "p"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ljavax/crypto/spec/DHPublicKeySpec;->y:Ljava/math/BigInteger;

    .line 46
    iput-object p2, p0, Ljavax/crypto/spec/DHPublicKeySpec;->p:Ljava/math/BigInteger;

    .line 47
    iput-object p3, p0, Ljavax/crypto/spec/DHPublicKeySpec;->g:Ljava/math/BigInteger;

    .line 48
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljavax/crypto/spec/DHPublicKeySpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ljavax/crypto/spec/DHPublicKeySpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ljavax/crypto/spec/DHPublicKeySpec;->y:Ljava/math/BigInteger;

    return-object v0
.end method
