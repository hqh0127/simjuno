#ifndef LSEXPDETECTORCONSTRUCTIONMATERIAL_HH
#define LSEXPDETECTORCONSTRUCTIONMATERIAL_HH

#include <G4Material.hh>
#include <G4Element.hh>

class LSExpDetectorConstructionMaterial {
    public:
        LSExpDetectorConstructionMaterial();
        ~LSExpDetectorConstructionMaterial();
        void initialize();
        G4Material* GetLS();
        G4Material* GetAcrylic();
        G4Material* GetAir();
        G4Material* GetWater();

    private:
        G4Element* C;
        G4Element* H;
        G4Element* O;
        G4Element* N;
        G4Element* S;
        G4Element* Ar;

        G4Material* LS;
        G4Material* Acrylic;
        G4Material* Air;
        G4Material* Water;
};

#endif
